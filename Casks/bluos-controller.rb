cask 'bluos-controller' do
  version '3.2.0,2018.06'
  sha256 '778ed0e19461f2a99d76c92987336232084ed4c4ba57e99c4dc5bb68b915a876'

  url "https://www.bluesound.com/wp-content/uploads/#{version.after_comma.dots_to_slashes}/BluOS-Controller-#{version.before_comma}.dmg"
  name 'BluOS Controller'
  homepage 'https://www.bluesound.com/'

  app 'BluOS Controller.app'
end
