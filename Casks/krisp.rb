cask 'krisp' do
  version '1.11.8'
  sha256 'b91a9a2cc7a04db75120d001b5b2981bf57a6ffee403a808cfe15aa7b6b5c00b'

  url "https://cdn.krisp.ai/mac/release/v#{version.major}.#{version.minor}/krisp_#{version}.pkg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://api.krisp.ai/v2/download/mac'
  name 'Krisp'
  homepage 'https://krisp.ai/'

  auto_updates true
  depends_on macos: '>= :sierra'

  pkg "krisp_#{version}.pkg"

  uninstall quit:    'ai.2Hz.krisp',
            pkgutil: 'ai.2Hz.Krisp'
end
