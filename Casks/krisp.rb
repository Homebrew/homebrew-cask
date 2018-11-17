cask 'krisp' do
  version '0.5.7'
  sha256 '5a43643864c30191dfafd2d17bf941cd049124146562f27be1bafc56421809b4'

  url "https://cdn.krisp.ai/installer/release/krisp_#{version}.pkg"
  name 'Krisp'
  homepage 'https://krisp.ai/index.html'

  pkg "krisp_#{version}.pkg"

  uninstall quit:    'ai.2Hz.krisp',
            pkgutil: 'ai.2Hz.Krisp'
end
