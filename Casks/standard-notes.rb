cask "standard-notes" do
  version "3.9.12"

  if Hardware::CPU.intel?
    sha256 "63f808938e05aa0487fc3f89c5db40cf7c63141f3963af41fcb97aa29265b6ae"

    url "https://github.com/standardnotes/desktop/releases/download/v#{version}/Standard-Notes-#{version}-mac-x64.zip",
        verified: "github.com/standardnotes/desktop/"
  else
    sha256 "9584a1d2cce20979b24d0f8ff9df041fd636f281d2a9dca290a1ab524e9a85a6"

    url "https://github.com/standardnotes/desktop/releases/download/v#{version}/Standard-Notes-#{version}-mac-arm64.zip",
        verified: "github.com/standardnotes/desktop/"
  end

  name "Standard Notes"
  desc "Free, open-source, and completely encrypted notes app"
  homepage "https://standardnotes.org/"

  auto_updates true

  app "Standard Notes.app"

  zap trash: [
    "~/Library/Application Support/Standard Notes",
    "~/Library/Caches/org.standardnotes.standardnotes",
    "~/Library/Caches/org.standardnotes.standardnotes.ShipIt",
    "~/Library/Preferences/org.standardnotes.standardnotes.plist",
    "~/Library/Preferences/org.standardnotes.standardnotes.helper.plist",
    "~/Library/Saved Application State/org.standardnotes.standardnotes.savedState",
  ]
end
