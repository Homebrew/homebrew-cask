cask 'krisp' do
  version '1.13.6'
  sha256 'd1d0a189f88d56954446201081a9ecc12dd96fe47005e4e830f00176f5251267'

  url "https://cdn.krisp.ai/mac/release/v#{version.major}.#{version.minor}/krisp_#{version}.pkg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://api.krisp.ai/v2/download/mac'
  name 'Krisp'
  homepage 'https://krisp.ai/'

  auto_updates true
  depends_on macos: '>= :sierra'

  pkg "krisp_#{version}.pkg"

  uninstall quit:    [
                       'ai.2Hz.krisp',
                       'ai.krisp.krispMac',
                     ],
            pkgutil: 'ai.2Hz.Krisp'
end
