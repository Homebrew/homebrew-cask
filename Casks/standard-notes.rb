cask "standard-notes" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.12.0"

  if Hardware::CPU.intel?
    sha256 "543de0dcb3748c0abf5fb3f2e65a09312b6df7ac525dede8a605e02536cd69ec"
  else
    sha256 "8d57b0bba68b1ca9d0da13c770c6bc80e3e9c353a42cd6e080c54f3781ccf1d8"
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
