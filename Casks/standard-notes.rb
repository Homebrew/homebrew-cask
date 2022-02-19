cask "standard-notes" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.11.1"

  if Hardware::CPU.intel?
    sha256 "deef7872ce29ac59c7c926f443899da9895ffb289a9c5ad4a8bedc5121a67e3b"
  else
    sha256 "c476e4d222a47331a58fc38dc6a1b45cbc9314c91ad1d4249dbe64ef9d755ec3"
  end

  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/Standard-Notes-#{version}-mac-#{arch}.zip",
      verified: "github.com/standardnotes/desktop/"
  name "Standard Notes"
  desc "Free, open-source, and completely encrypted notes app"
  homepage "https://standardnotes.org/"

  auto_updates true

  app "Standard Notes.app"

  zap trash: [
    "~/Library/Application Support/Standard Notes",
    "~/Library/Caches/org.standardnotes.standardnotes.ShipIt",
    "~/Library/Caches/org.standardnotes.standardnotes",
    "~/Library/Preferences/org.standardnotes.standardnotes.helper.plist",
    "~/Library/Preferences/org.standardnotes.standardnotes.plist",
    "~/Library/Saved Application State/org.standardnotes.standardnotes.savedState",
  ]
end
