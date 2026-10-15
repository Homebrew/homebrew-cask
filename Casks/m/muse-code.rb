cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.4.9-R6297.1"
  sha256 arm:          "2b856618ae3de3a63956e6d510b849ad707b16e5d2ed196299f3fe5ef2e3ff5e",
         intel:        "4c6ed04ccd5a453bd7b38799aeb9eb290b8635b32c95b5a35e6950a2f20446cb",
         arm64_linux:  "d64c61f4357b246fb46ab4f01332b36066bb4ac17541a88f520680354a32e06a",
         x86_64_linux: "a228010021276e112aa8422eb56ae82c0375405701950f6529bed4c9fe8abe05"

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
