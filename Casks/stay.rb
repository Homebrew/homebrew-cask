cask "stay" do
  version "1.3"
  sha256 "fc20518adc53aba6856cc5b3149889f046ab640134a9876952c5a0cb61e9b6a2"

  url "https://cordlessdog.com/stay/versions/Stay%20#{version}.dmg"
  appcast "https://cordlessdog.com/stay/appcast.xml"
  name "Stay"
  desc "Windows manager"
  homepage "https://cordlessdog.com/stay/"

  depends_on macos: ">= :mojave"

  app "Stay.app"

  zap trash: [
    "~/Library/Application Support/Stay",
    "~/Library/Application Support/com.cordlessdog.Stay",
    "~/Library/Preferences/com.cordlessdog.Stay.plist",
  ]
end
