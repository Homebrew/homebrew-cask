cask "copyq" do
  arch arm: "12-m1", intel: "13"

  version "11.0.0"
  sha256 arm:   "3471c6bbafaf08e720812dd20054c3b46b2f1b664a8ddeb87963157e64eeee26",
         intel: "9f6749bab19540f2936a408d3c66dff6434409b8db067456ec229f8c8a260179"

  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ-macos-#{arch}.dmg.zip",
      verified: "github.com/hluk/CopyQ/"
  name "CopyQ"
  desc "Clipboard manager with advanced features"
  homepage "https://hluk.github.io/CopyQ/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :unsigned

  depends_on macos: ">= :monterey"

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
