cask 'listen1' do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version '2.7.1'
  sha256 '6679a19de87bb0f80da01d49f4d083a69587d3a06693ee5aa6ed93c57c7b4a96'

  # github.com/listen1/listen1_desktop/ was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg"
  appcast 'https://github.com/listen1/listen1_desktop/releases.atom'
  name 'Listen 1'
  homepage 'https://listen1.github.io/listen1/'

  app 'Listen1.app'
end
