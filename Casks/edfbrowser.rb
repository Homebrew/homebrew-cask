cask 'edfbrowser' do
  version '1.75,17cf821fec8dc9b27e9632c055307117'
  sha256 'a0ac2209b2e4372964ba9b4d2e26bdd0b5fad86316fbd982f7b759b2b4305bb4'

  # gitlab.com/whitone/EDFbrowser/ was verified as official when first introduced to the cask
  url "https://gitlab.com/whitone/EDFbrowser/uploads/#{version.after_comma}/EDFbrowser-#{version.before_comma}.dmg"
  appcast 'https://gitlab.com/whitone/EDFbrowser/-/tags?format=atom'
  name 'EDFbrowser'
  homepage 'https://www.teuniz.net/edfbrowser'

  app 'EDFbrowser.app'
end
