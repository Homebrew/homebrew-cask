cask 'bluos-controller' do
  version '3.4.4,2018.12'
  sha256 '4a497717d1aff4dcab06cc5705ce6db47c21ff01f8437445dba1755138797244'

  url "https://www.bluesound.com/wp-content/uploads/#{version.after_comma.dots_to_slashes}/BluOS-Controller-#{version.before_comma}.dmg"
  name 'BluOS Controller'
  homepage 'https://www.bluesound.com/'

  app 'BluOS Controller.app'
end
