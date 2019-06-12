cask 'krisp' do
  version '1.0.1'
  sha256 '61ae1e9231a0e479786edf65c63c691a29146b76761227cfb2176263bbac429e'

  url "https://cdn.krisp.ai/mac/release/v#{version.major}.#{version.minor}/krisp_#{version}.pkg"
  appcast 'https://krisp.ai/index.html'
  name 'Krisp'
  homepage 'https://krisp.ai/index.html'

  auto_updates true

  pkg "krisp_#{version}.pkg"

  uninstall quit:    'ai.2Hz.krisp',
            pkgutil: 'ai.2Hz.Krisp'
end
