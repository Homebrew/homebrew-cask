cask "font-national-park" do
  version "1.005"
  sha256 :no_check

  url "https://files.cargocollective.com/c1415345/NationalPark-otf.zip",
      verified: "cargocollective.com/"
  name "National Park"
  homepage "https://nationalparktypeface.com/"

  font "otf/NationalPark-Bold.otf"
  font "otf/NationalPark-Light.otf"
  font "otf/NationalPark-Regular.otf"
  font "otf/NationalPark-ExtraBold.otf"
  font "otf/NationalPark-ExtraLight.otf"
  font "otf/NationalPark-SemiBold.otf"
  font "otf/NationalPark-Medium.otf"

  # No zap stanza required
end
