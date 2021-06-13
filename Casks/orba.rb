cask "orba" do
  version "0.15.18"
  sha256 "591fc3ca8d87ba57ac6e9aa1c0eaff24a0d2abbaeb5b8de0363d9cab6e15dbe7"

  url "https://storage.googleapis.com/artiphon-web-content/Orba%20App/Orba-#{version}.dmg",
      verified: "https://storage.googleapis.com/artiphon-web-content/"
  name "Orba"
  desc "Companion to the Orba handheld MIDI-Controller"
  homepage "https://artiphon.com/"

  app "Orba.app"

  zap trash: [
    "~/Library/Preferences/com.artiphon.orba.plist",
    "~/Library/Saved Application State/com.artiphon.orba.savedState/",
    "~/Library/Artiphon/Orba/",
  ]
end
