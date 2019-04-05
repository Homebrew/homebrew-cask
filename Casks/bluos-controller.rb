cask 'bluos-controller' do
  version '3.4.5,2019.02'
  sha256 '45ee4032712104b559e62636c3dc3952cbcfbc33e75207bbaa873177e5c28079'

  url "https://www.bluesound.com/wp-content/uploads/#{version.after_comma.dots_to_slashes}/BluOS-Controller-#{version.before_comma}.dmg"
  name 'BluOS Controller'
  homepage 'https://www.bluesound.com/'

  app 'BluOS Controller.app'
end
