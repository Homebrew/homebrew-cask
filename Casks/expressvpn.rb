cask :v1 => 'expressvpn' do
  version '4.0.4.305'
  sha256 'acb898d8fc1688cc1bbb6f2f1a76f6b3f985543649c25bf1ae16c3e786bf857c'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d11cv8afjim9ws.cloudfront.net/clients/mac/expressvpn-install_v#{version}.pkg"
  name 'ExpressVPN'
  homepage 'https://www.expressvpn.com'
  license :commercial

  pkg "expressvpn-install_v#{version}.pkg"

  uninstall :pkgutil => 'com.expressvpn.ExpressVPN',
            :quit => 'com.expressvpn.ExpressVPN'

  depends_on :macos => '>= 10.8'
end