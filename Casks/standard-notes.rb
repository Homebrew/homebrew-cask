cask "standard-notes" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.9.20"

  if Hardware::CPU.intel?
    sha256 "a10b636f4c0767df76078e7fc6c377f75bef5d0d8ce55d9e89a476d5abb6e5c5"
  else
    sha256 "703dbc253551fc12b71ecc26ed3f9f02a7e4f1db37966ba773f6fc75dc3db7bd"
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
