cask "mate-translate" do
  version "8.1.2,3038"
  sha256 :no_check

  url "https://gikken.co/mate/MateTranslate.zip",
      verified: "gikken.co/mate/"
  name "Mate Translate"
  desc "Select text in any app and translate it"
  homepage "https://twopeoplesoftware.com/mate"

  livecheck do
    url "https://gikken.co/mate/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "Mate Translate.app"

  zap trash: [
    "~/Library/Application Scripts/com.twopeoplesoftware.InstantTranslate-nomas.Mate-Translate-Safari",
    "~/Library/Containers/com.twopeoplesoftware.InstantTranslate-nomas.Mate-Translate-Safari",
  ]
end
