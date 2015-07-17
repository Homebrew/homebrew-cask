cask :v1 => 'audacity' do
  version '2.1.0'
  sha256 '818a4b8bbcb50878a8b1b9f71b4274d242ab46bf860c74676e98dec1d0248821'

  url "http://downloads.sourceforge.net/project/audacity/audacity/#{version}/audacity-macosx-ub-#{version}.dmg"
  name 'Audacity'
  homepage 'http://audacity.sourceforge.net/'
  license :gpl

  app 'Audacity/Audacity.app'
end
