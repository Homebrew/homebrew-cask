cask 'krisp' do
  version '1.12.13'
  sha256 'c84e78637f5861adfc194b75f3cbed889f6628b0c5dae3651d8f5d46382e672f'

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
