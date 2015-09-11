cask :v1 => 'boxer' do
  version '1.3.2-20120713'
  sha256 'e96bd463d185d7d6a6f670b3d498ffa61c6f4ae226a535bfa24bad95faea21a1'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/downloads/alunbestor/Boxer/boxer-#{version}.1.zip"
  appcast 'http://boxerapp.com/appcast',
           :sha256 => '5b23ad7be23ab871d316e44f2fbb3732e7872d10d4f874db714db4be5855a56b',
           :format => :sparkle
  name 'Boxer'
  homepage 'http://boxerapp.com/'
  license :gpl

  depends_on :macos => '>= :leopard'

  app 'Boxer.app'
end
