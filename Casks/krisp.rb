cask 'krisp' do
  version '1.1.1'
  sha256 '9b6218e785307c973754ab27b198a67772921443e43d9d2fb1079b68fdefcbdd'

  url "https://cdn.krisp.ai/mac/release/v#{version.major}.#{version.minor}/krisp_#{version}.pkg"
  appcast 'https://krisp.ai/index.html'
  name 'Krisp'
  homepage 'https://krisp.ai/index.html'

  auto_updates true
  depends_on macos: '>= :sierra'

  pkg "krisp_#{version}.pkg"

  uninstall quit:    'ai.2Hz.krisp',
            pkgutil: 'ai.2Hz.Krisp'
end
