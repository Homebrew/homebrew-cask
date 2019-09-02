cask 'krisp' do
  version '1.3.5'
  sha256 'fb7bbd3fbf7c1e50102405a88996f82b788c2cb987922ad36bca4843c1004be3'

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
