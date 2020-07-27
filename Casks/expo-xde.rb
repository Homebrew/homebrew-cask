cask "expo-xde" do
  version "2.25.0"
  sha256 "acc7048dcd9763e6924850595b325a4c38c9d28ab1c07dd07f2bc6058476ed2a"

  # github.com/expo/xde/ was verified as official when first introduced to the cask
  url "https://github.com/expo/xde/releases/download/v#{version}/xde-#{version}.dmg"
  appcast "https://github.com/expo/xde/releases.atom"
  name "Expo Development Environment (XDE)"
  homepage "https://expo.io/"

  app "Expo XDE.app"

  caveats do
    discontinued
  end
end
