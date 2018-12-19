cask 'bluos-controller' do
  version '3.4.0,2018.10'
  sha256 'fde5bffb8b9a8e683008b2639db0359ef4857e30fcd35ae96c5dedf2047f559b'

  url "https://www.bluesound.com/wp-content/uploads/#{version.after_comma.dots_to_slashes}/BluOS-Controller-#{version.before_comma}.dmg"
  name 'BluOS Controller'
  homepage 'https://www.bluesound.com/'

  app 'BluOS Controller.app'
end
