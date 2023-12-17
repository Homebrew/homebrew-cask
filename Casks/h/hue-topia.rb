cask "hue-topia" do
  version "4.0.3"
  sha256 "e0a6c4ad5c0574b4ca5cde27fc91c6c6208f215adaf428bdb2495c6c48aeea2e"

  url "https://peacockmedia.software/mac/huetopia/huetopia#{version.no_dots}.dmg"
  name "Hue-topia"
  desc "Manual control over Philips Hue bulbs"
  homepage "https://peacockmedia.software/mac/huetopia/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Hue-topia.app"

  zap trash: [
    "~/Library/Application Scripts/com.peacockmedia.Hue-topia",
    "~/Library/Containers/com.peacockmedia.Hue-topia",
  ]
end
