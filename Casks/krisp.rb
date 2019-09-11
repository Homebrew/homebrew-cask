cask 'krisp' do
  version '1.4.10'
  sha256 '21103f0123982ab608fffe56e7124e80a80f58f718f635ae789981a7fda4ac79'

  url "https://cdn.krisp.ai/mac/release/v#{version.major}.#{version.minor}/krisp_#{version}.pkg"
  appcast 'https://krisp.ai/'
  name 'Krisp'
  homepage 'https://krisp.ai/'

  auto_updates true
  depends_on macos: '>= :sierra'

  pkg "krisp_#{version}.pkg"

  uninstall quit:    'ai.2Hz.krisp',
            pkgutil: 'ai.2Hz.Krisp'
end
