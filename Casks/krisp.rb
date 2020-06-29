cask 'krisp' do
  version '1.14.4'
  sha256 '245089b051578278e80dd37571f4e508020c6c1bd4da7506dbae44faa943f8ac'

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
