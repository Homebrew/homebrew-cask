cask "standard-notes" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.9.15"

  if Hardware::CPU.intel?
    sha256 "a30ee76433518f9834c26eea604e855cf5bd3dedab9c7dbe48e1fc4623cf13d6"
  else
    sha256 "5cd1b11682ca54fc499a7a62a0633c692b60bad7abc3f632636fad56dc587606"
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
