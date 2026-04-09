cask "imazing-profile-editor" do
  version "2.2.0,392103"
  sha256 "f5af8180e6aae3fa7d08b62e44e05bc7566dd10ebbbdfd613ca1731fb21b9e00"

  url "https://downloads.imazing.com/mac/iMazing-Profile-Editor/#{version.csv.first}.#{version.csv.second}/iMazing_Profile_Editor_#{version.csv.first}.#{version.csv.second}.dmg"
  name "iMazing Profile Editor"
  desc "Apple Device Configuration Profile Editor"
  homepage "https://imazing.com/profile-editor"

  livecheck do
    url "https://downloads.imazing.com/com.DigiDNA.iMazingProfileEditorMac.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "iMazing Profile Editor.app"

  uninstall quit: "com.DigiDNA.iMazingProfileEditorMac"

  zap trash: [
    "~/Library/Application Scripts/com.DigiDNA.iMazingProfileEditorMac",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.DigiDNA.iMazingProfileEditorMac.Mini",
    "~/Library/Containers/com.DigiDNA.iMazingProfileEditorMac",
    "~/Library/Saved Application State/com.DigiDNA.iMazingProfileEditorMac.savedState",
  ]
end
