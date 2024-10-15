cask "font-national-park" do
  version "1.005"
  sha256 :no_check

  url "https://files.cargocollective.com/c1415345/NationalPark-All-Fonts.zip",
      verified: "cargocollective.com/"
  name "National Park"
  homepage "https://nationalparktypeface.com/"

  livecheck do
    skip "No version information available"
  end

  font "NationalPark-All-Fonts/NationalPark-VariableVF.ttf"
  font "NationalPark-All-Fonts/otf/NationalPark-Bold.otf"
  font "NationalPark-All-Fonts/otf/NationalPark-Light.otf"
  font "NationalPark-All-Fonts/otf/NationalPark-Regular.otf"
  font "NationalPark-All-Fonts/otf/NationalPark-ExtraBold.otf"
  font "NationalPark-All-Fonts/otf/NationalPark-ExtraLight.otf"
  font "NationalPark-All-Fonts/otf/NationalPark-SemiBold.otf"
  font "NationalPark-All-Fonts/otf/NationalPark-Medium.otf"

  # No zap stanza required
end
