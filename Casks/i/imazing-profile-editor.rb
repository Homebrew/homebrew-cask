cask "imazing-profile-editor" do
  version "2.0.0,364301"
  sha256 "b35686da3edda25273069d370996caa611012ed8f1f3f5bf18128ca9fa130310"

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
    "~/Library/Application Scripts/com.DigiDNA.iMazingProfileEditorMac",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.DigiDNA.iMazingProfileEditorMac.Mini",
    "~/Library/Containers/com.DigiDNA.iMazingProfileEditorMac",
    "~/Library/Saved Application State/com.DigiDNA.iMazingProfileEditorMac.savedState",
  ]
end
