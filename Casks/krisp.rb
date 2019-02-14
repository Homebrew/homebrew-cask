cask 'krisp' do
  version '0.7.6'
  sha256 'ee24ebc63110528e7a7e2681fe595936174c7b33b4c7a7070bd64e19cd7c33d1'

  url "https://cdn.krisp.ai/installer/release/krisp_#{version}.pkg"
  name 'Krisp'
  homepage 'https://krisp.ai/index.html'

  auto_updates true

  pkg "krisp_#{version}.pkg"

  uninstall quit:    'ai.2Hz.krisp',
            pkgutil: 'ai.2Hz.Krisp'
end
