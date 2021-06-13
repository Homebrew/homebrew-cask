cask "instrument1" do
  version "1.0.20"
  sha256 "fe1304b08c174783d49622fe000a2d2728deb653ce104aefbfc4115681c5fb54"

  url "https://storage.googleapis.com/artiphon-preset-editor/Artiphon%20INSTRUMENT%201%20Editor-#{version}.dmg",
      verified: "https://storage.googleapis.com/artiphon-preset-editor/"
  name "INSTRUMENT 1 Editor"
  desc "Companion to the INSTRUMENT 1 handheld MIDI-Controller"
  homepage "https://artiphon.com/"

  app "Artiphon INSTRUMENT 1 Editor.app"

  zap trash: [
    "~/Library/Preferences/com.artiphon.preseteditor.helper.plist",
    "~/Library/Preferences/com.artiphon.preseteditor.plist",
    "~/Library/Saved Application State/com.artiphon.preseteditor.savedState",
    "~/Library/Application Support/Artiphon INSTRUMENT 1 Editor",
  ]
end
