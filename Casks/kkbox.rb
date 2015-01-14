cask :v1 => 'kkbox' do
  version '5.2.10-bb7c025'
  sha256 '8fc8bb44806861b8321daedc8895ec0616dd2481628e23f6408c9168bec8c39b'

  url "http://download.kkbox.com/files/KKBOX-#{version}.dmg"
  homepage 'http://www.kkbox.com/'
  license :commercial

  app 'KKBOX.app'
end
