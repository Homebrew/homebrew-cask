cask :v1 => 'hive' do
  version '1.4.1'
  sha256 '380f056ee5f88c86e69f1f08723db341aa482f36eb048972664d661f44efa58b'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/hivewallet/hive-osx/releases/download/#{version}/Hive-#{version}.zip"
  appcast 'https://github.com/hivewallet/hive-osx/releases.atom'
  homepage 'http://www.hivewallet.com'
  license :gpl

  app 'Hive.app'

  postflight do
    suppress_move_to_applications
  end
end
