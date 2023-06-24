cask "hue-topia" do
  version "4.0.3"
  sha256 "e0a6c4ad5c0574b4ca5cde27fc91c6c6208f215adaf428bdb2495c6c48aeea2e"

  url "https://peacockmedia.software/mac/huetopia/huetopia#{version.no_dots}.dmg"
  name "Hue-topia"
  desc "Manual control over Philips Hue bulbs"
  homepage "https://peacockmedia.software/mac/huetopia/"

  app "Hue-topia.app"

  caveats do
    discontinued
  end
end
