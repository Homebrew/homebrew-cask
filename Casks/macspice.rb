cask :v1 => 'macspice' do
  version '3.1.5'
  sha256 '356d606dc8c5724db902b5290dcb3eca270601f1a91a00d0bd5847666237af2f'

  url "http://www.macspice.com/mirror/binaries/v#{version}/MacSpice3f5.dmg"
  appcast 'http://www.macspice.com/AppCast-v2.xml',
          :sha256 => '31111c473934c550022a51f86fde12e5c9905515d188b3aa1f3b404b81173101'
  name 'MacSpice'
  homepage 'http://www.macspice.com/'
  license :closed

  app 'MacSpice.app'
end
