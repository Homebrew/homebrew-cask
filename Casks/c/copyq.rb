cask "copyq" do
  arch arm: "12-m1", intel: "10"

  version "8.0.0"
  sha256 arm:   "17cb342480203c19978ae9f0f3207c841133df633f225e1d2b6945acf6bd4975",
         intel: "d037a47acabd4e8a4e41a4320b3b0b318316a53ffec2a88273ac443de8d46399"

  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ-macos-#{arch}.dmg.zip",
      verified: "github.com/hluk/CopyQ/"
  name "CopyQ"
  desc "Clipboard manager with advanced features"
  homepage "https://hluk.github.io/CopyQ/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

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
