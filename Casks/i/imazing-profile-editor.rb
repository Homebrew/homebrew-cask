cask "imazing-profile-editor" do
  version "2.3.3,414303"
  sha256 "ef655971523052c2781c8dc497c5c3aee04fd1e669e916e604d6d32c702bd415"

  url "https://downloads.imazing.com/mac/iMazing-Profile-Editor/#{version.csv.first}.#{version.csv.second}/iMazing_Profile_Editor_#{version.csv.first}.#{version.csv.second}.dmg"
  name "iMazing Profile Editor"
  desc "Apple Device Configuration Profile Editor"
  homepage "https://imazing.com/profile-editor"

  livecheck do
    url "https://downloads.imazing.com/com.DigiDNA.iMazingProfileEditorMac.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "iMazing Profile Editor.app"

  uninstall quit: "com.DigiDNA.iMazingProfileEditorMac"

  zap trash: [
    "~/Library/Application Scripts/com.DigiDNA.iMazingProfileEditorMac",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.DigiDNA.iMazingProfileEditorMac.Mini",
    "~/Library/Containers/com.DigiDNA.iMazingProfileEditorMac",
    "~/Library/Saved Application State/com.DigiDNA.iMazingProfileEditorMac.savedState",
  ]
end
