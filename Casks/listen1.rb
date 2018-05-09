cask 'listen1' do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version '1.6.0'
  sha256 '036281f54d0d9bb53ee48a265f60c97e57d3dc51b30ca28d2bc05d91c7b9d756'

  # github.com/listen1/listen1_desktop was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg.zip"
  appcast 'https://github.com/listen1/listen1_desktop/releases.atom',
          checkpoint: '56e02d4ccc421e2d395eaecec1c3affea2246758c8b43dcc51a54acc26d0f136'
  name 'Listen 1'
  homepage 'https://listen1.github.io/listen1/'

  app 'Listen1.app'
end
