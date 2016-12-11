cask 'bathyscaphe' do
  version '273-v966'
  sha256 '5a0e8ce2305a8a1fb43e9851cdb046764e4a6d48204ec0c0b955d3dc69ecc969'

  url "https://bitbucket.org/bathyscaphe/public/downloads/BathyScaphe-#{version}.dmg"
  name 'BathyScaphe'
  homepage 'http://bathyscaphe.bitbucket.org/'

  app 'BathyScaphe.app'
end
