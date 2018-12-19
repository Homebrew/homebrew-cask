cask 'krisp' do
  version '0.6.8'
  sha256 '3bb1e8f497dd8e1d3e021352765c8f49efd8dfe9b592eee7ed52c122288b497b'

  url "https://cdn.krisp.ai/installer/release/krisp_#{version}.pkg"
  name 'Krisp'
  homepage 'https://krisp.ai/index.html'

  pkg "krisp_#{version}.pkg"

  uninstall quit:    'ai.2Hz.krisp',
            pkgutil: 'ai.2Hz.Krisp'
end
