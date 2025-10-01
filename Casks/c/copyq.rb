cask "copyq" do
  arch arm: "12-m1", intel: "13"

  version "12.0.1"
  sha256 arm:   "0ca635cedd40e41dbf2869deaa16429a0abac2f616ce7950972c182012525aa1",
         intel: "edf1bb6436fdfad222b182ec2433606c5a9e22d192c1c33821f966e7751c71a9"

  on_arm do
    depends_on macos: ">= :monterey"
  end
  on_intel do
    depends_on macos: ">= :ventura"
  end

  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ-macos-#{arch}.dmg.zip",
      verified: "github.com/hluk/CopyQ/"
  name "CopyQ"
  desc "Clipboard manager with advanced features"
  homepage "https://hluk.github.io/CopyQ/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "CopyQ.app"

  zap trash: [
    "~/.config/copyq",
    "~/Library/Application Support/copyq",
    "~/Library/Application Support/copyq.log",
    "~/Library/Preferences/com.copyq.copyq.plist",
  ]

  caveats do
    unsigned_accessibility
  end
end
