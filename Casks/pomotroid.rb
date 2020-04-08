cask 'pomotroid' do
  version '0.7.1'
  sha256 '4cb6e9092299b726133971601cff969ba0958e198372ecc4a13c85b40f32edcb'

  url "https://github.com/Splode/pomotroid/releases/download/v#{version}/pomotroid-#{version}-macos.dmg"
  appcast 'https://github.com/Splode/pomotroid/releases.atom'
  name 'Pomotroid'
  homepage 'https://github.com/Splode/pomotroid'

  app 'Pomotroid.app'
end
