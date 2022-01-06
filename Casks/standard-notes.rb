cask "standard-notes" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.9.13"

  if Hardware::CPU.intel?
    sha256 "de625b569e3330a8b86e28e87dc4c800e250f2c555d16909396388228639feeb"
  else
    sha256 "aa29dda83dfc44e6a264dc2e9087307293b2b01d48ca9bb157955e2c27e92ae8"
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
