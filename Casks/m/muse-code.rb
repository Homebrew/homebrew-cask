cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.3.0-R3233.1"
  sha256 arm:          "4395928df3527ced7613f18d74aa7bb1c383290c01ae5bbf792d996fa949452e",
         intel:        "2a1bb6b900877e4e9561c6f236766b3da2210debc88ed36dff6c2f6333f23a25",
         arm64_linux:  "4637d398809159af148bc0ad4cb510e85d10a66fc7aeb47559be0db0e424bacd",
         x86_64_linux: "dfc52dc7d37e23d7618ed37a7ec3dd8d0f4c83c647b0f1cc2c2791274acabe78"

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
