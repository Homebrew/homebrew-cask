cask :v1 => 'sleipnir' do
  version :latest
  sha256 :no_check

  url 'http://www.fenrir-inc.com/services/download.php?file=Sleipnir.dmg'
  homepage 'http://www.fenrir-inc.com/sleipnir/'
  license :closed

  app 'Sleipnir.app'
end
