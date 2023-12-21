cask "imazing-profile-editor" do
  version "1.7.4,277301"
  sha256 "8f40e61f91334d04bbf0ddf5c291471d413f3cb5cfe17d5058aa070465116bd5"

  url "https://downloads.imazing.com/mac/iMazing-Profile-Editor/#{version.csv.first}.#{version.csv.second}/iMazing_Profile_Editor_#{version.csv.first}.#{version.csv.second}.dmg"
  name "iMazing Profile Editor"
  desc "Apple Device Configuration Profile Editor"
  homepage "https://imazing.com/profile-editor"

  livecheck do
    url "https://downloads.imazing.com/com.DigiDNA.iMazingProfileEditorMac.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "iMazing Profile Editor.app"

  uninstall quit: "com.DigiDNA.iMazingProfileEditorMac"

  zap trash: [
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.DigiDNA.iMazingProfileEditorMac.Mini",
    "~/Library/Saved Application State/com.DigiDNA.iMazingProfileEditorMac.savedState",
    "~/Library/Application Scripts/com.DigiDNA.iMazingProfileEditorMac",
    "~/Library/Containers/com.DigiDNA.iMazingProfileEditorMac",
  ]
end
