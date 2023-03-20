cask "hue-topia" do
  version "3.4.2,1813"
  sha256 :no_check

  url "https://peacockmedia.software/mac/huetopia/huetopia.dmg"
  name "Hue-topia"
  desc "Manual control over Philips Hue bulbs"
  homepage "https://peacockmedia.software/mac/huetopia/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Hue-topia.app"
end
