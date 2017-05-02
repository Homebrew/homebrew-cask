cask 'fontbase' do
  version '2.0.0'
  sha256 '5a9169db4e5609539a3a8de0dc091ddd49a4698d47b4845c74650c8e3e328a9d'

  url "http://releases.fontba.se/mac/#{version}/FontBase-#{version}.dmg"
  name 'FontBase'
  homepage 'http://fontba.se/'

  app 'FontBase.app'
end
