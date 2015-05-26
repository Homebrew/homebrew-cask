cask :v1 => 'squire' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/Squire_Mac_Builds/Squire.dmg'
  name 'Squire'
  homepage 'http://squireapp.com'
  license :commercial

  app 'Squire.app'
end
