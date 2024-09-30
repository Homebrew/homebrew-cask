cask "imazing-profile-editor" do
  version "1.9.2,304501"
  sha256 "f4e88fed4a6e165a61e1cabed679b1d890ebbd0228af7d2a79584561d8c1df23"

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
