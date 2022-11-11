cask "standard-notes" do
  arch arm: "arm64", intel: "x64"

  version "3.23.292"
  sha256 arm:   "c3f132184335ac63f8ac4b8cee81e9bc9ac8f5e132e2f4b0258e9e5ea31a751b",
         intel: "53d129f30eef70f086ce7ad0f1b6c85215cfaaf60f9ceddfbda4ab340690c048"

  url "https://github.com/standardnotes/app/releases/download/%40standardnotes%2Fdesktop%40#{version}/standard-notes-#{version}-mac-#{arch}.zip",
      verified: "github.com/standardnotes/app/"
  name "Standard Notes"
  desc "Free, open-source, and completely encrypted notes app"
  homepage "https://standardnotes.org/"

  livecheck do
    url "https://github.com/standardnotes/app/releases/latest"
    strategy :header_match
  end

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
