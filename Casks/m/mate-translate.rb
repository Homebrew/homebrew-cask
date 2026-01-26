cask "mate-translate" do
  version "8.3.3"
  sha256 :no_check

  url "https://gikken.co/mate/MateTranslate.dmg"
  name "Mate Translate"
  desc "Select text in any app and translate it"
  homepage "https://gikken.co/mate-translate/mac/"

  livecheck do
    url "https://gikken.co/mate/appcast-sub.xml"
    strategy :sparkle, &:short_version
  end

  app "Mate Translate.app"

  uninstall quit: "com.twopeoplesoftware.InstantTranslate-nomas"

  zap trash: [
    "~/Library/Application Scripts/*.co.twopeople.mate",
    "~/Library/Application Scripts/andriiliakh.InstantTranslateHelper",
    "~/Library/Application Scripts/com.twopeoplesoftware.InstantTranslate-nomas.Mate-Translate-Safari",
    "~/Library/Application Support/com.twopeoplesoftware.InstantTranslate-nomas",
    "~/Library/Caches/com.twopeoplesoftware.InstantTranslate-nomas",
    "~/Library/Containers/andriiliakh.InstantTranslateHelper",
    "~/Library/Containers/com.twopeoplesoftware.InstantTranslate-nomas.Mate-Translate-Safari",
    "~/Library/Group Containers/*.co.twopeople.mate",
    "~/Library/HTTPStorages/com.twopeoplesoftware.InstantTranslate-nomas",
    "~/Library/HTTPStorages/com.twopeoplesoftware.InstantTranslate-nomas.binarycookies",
    "~/Library/Preferences/com.twopeoplesoftware.InstantTranslate-nomas.plist",
  ]
end
