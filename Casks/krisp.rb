cask 'krisp' do
  version '1.2.5'
  sha256 '57b724f4df81d214ff2b02866fce9ecd1a1f1e1c7401930ba0ffd19c3296d205'

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
