cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.4.0-R4161.1"
  sha256 arm:          "3da984f26539ee5cfd9c695f6f178cbeb7b16e2cb3b21f4cc866ab847f8f116d",
         intel:        "13e619e4ca7fec9a0398bb15563a1c26c770c99fd81bfaf805e2fe86c0351dc2",
         arm64_linux:  "38a0e3b7f59825ffc60f7fae65ac9727cf9bbb47fe4e687cc29cede9deb8fabf",
         x86_64_linux: "1b68bd4518d53a2aaff063915df4d141b0a205e6d79038299d04e3a14e85a5b9"

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
