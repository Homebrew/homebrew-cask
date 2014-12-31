cask :v1 => 'squire' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/Squire_Mac_Builds/Squire.dmg'
  homepage 'http://squireapp.com'
  license :commercial

  app 'Squire.app'
end
