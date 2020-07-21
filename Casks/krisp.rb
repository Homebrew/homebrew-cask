cask 'krisp' do
  version '1.15.4'
  sha256 '55a8f3b016a393febdf42a36da7bb8ed6d0d077bd227a101c1caba53ade4c9e8'

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
