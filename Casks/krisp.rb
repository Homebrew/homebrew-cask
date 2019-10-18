cask 'krisp' do
  version '1.6.8'
  sha256 'd2ea01f97d51d7fd140d5d4f47e0e66ad7d0ef2730bed2ce1d5b707674e58424'

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
