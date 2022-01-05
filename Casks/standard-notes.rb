cask "standard-notes" do
  version "3.9.13"

  if Hardware::CPU.intel?
    sha256 "de625b569e3330a8b86e28e87dc4c800e250f2c555d16909396388228639feeb"

    url "https://github.com/standardnotes/desktop/releases/download/v#{version}/Standard-Notes-#{version}-mac-x64.zip",
        verified: "github.com/standardnotes/desktop/"
  else
    sha256 "aa29dda83dfc44e6a264dc2e9087307293b2b01d48ca9bb157955e2c27e92ae8"

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
