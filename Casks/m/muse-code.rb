cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.4.0-R4302.1"
  sha256 arm:          "b7e1ebdf6b5c7e67ddb8ff4b917461f555758545c7db25076b3696d84018d752",
         intel:        "648d8f8b7d7f944e11dda116b1833e9a4ce2e753c8d48db57f0c0200b12e7213",
         arm64_linux:  "79cfba1b9e417b370bdb9154a546c524b7f32a34026e6164b6f3f122f0ea3386",
         x86_64_linux: "ad21c22965f8600b4473b4ab8354ff7cc483d4cb681b46f2952561d855c8ed86"

  on_macos do
    depends_on macos: :monterey
  end

  url "https://lookaside.facebook.com/lookaside/muse/download/?channel=muse&version=#{version}&file=muse-#{arch}-#{os}"
  name "Muse Code"
  desc "Interactive terminal coding agent"
  homepage "https://dev.meta.ai/"

  livecheck do
    url "https://api.meta.ai/muse-code/channels/muse-stable"
    strategy :json do |json|
      json["version"]
    end
  end

  binary "muse-#{arch}-#{os}", target: "muse"

  zap trash: [
    "~/.config/muse",
    "~/.local/share/muse",
  ]
end
