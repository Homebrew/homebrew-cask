cask "mate-translate" do
  version "11.0.1"
  sha256 :no_check

  url "https://gikken.co/mate/MateTranslate.dmg"
  name "Mate Translate"
  desc "Select text in any app and translate it"
  homepage "https://gikken.co/mate-translate/mac/"

  livecheck do
    url "https://gikken.co/mate/appcast-sub.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :sonoma

  app "Mate Translate.app"

  uninstall quit: "com.twopeoplesoftware.InstantTranslate-nomas"

  zap trash: [
    "~/Library/Application Scripts/86XZXYRY9F.co.gikken.mate",
    "~/Library/Application Scripts/com.twopeoplesoftware.InstantTranslate-nomas.Mate-Translate-Safari",
    "~/Library/Application Scripts/S8B638MM79.co.twopeople.mate",
    "~/Library/Application Support/com.twopeoplesoftware.InstantTranslate-nomas",
    "~/Library/Caches/com.twopeoplesoftware.InstantTranslate-nomas",
    "~/Library/Containers/com.twopeoplesoftware.InstantTranslate-nomas.Mate-Translate-Safari",
    "~/Library/Group Containers/86XZXYRY9F.co.gikken.mate",
    "~/Library/Group Containers/S8B638MM79.co.twopeople.mate",
    "~/Library/HTTPStorages/com.twopeoplesoftware.InstantTranslate-nomas",
    "~/Library/HTTPStorages/com.twopeoplesoftware.InstantTranslate-nomas.binarycookies",
    "~/Library/Preferences/com.twopeoplesoftware.InstantTranslate-nomas.plist",
  ]
end
