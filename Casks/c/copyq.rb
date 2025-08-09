cask "copyq" do
  arch arm: "12-m1", intel: "10"

  version "10.0.0"
  sha256 arm:   "f535cc45a1df777643fe47200c206b3a9d461b7b58869b1783ab7de1c95eccdc",
         intel: "5565ba19d59ab2bd4c54bb023dbf3fdf2b80b9706b25bc2021358f65c0cde5d4"

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
