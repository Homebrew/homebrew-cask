cask 'qdesktop' do
  version '0.1.2-6'
  sha256 '80091362a4350baf14aa0d78eae0078ee974f68b9fa440a75569a4e591d3813a'

  # github.com/qvacua/qdesktop was verified as official when first introduced to the cask
  url "https://github.com/qvacua/qdesktop/releases/download/v#{version}/Qdesktop-#{version.major_minor_patch}.zip"
  appcast 'https://github.com/qvacua/qdesktop/releases.atom',
          checkpoint: '3315189f2786ae5c1423da690d6d512af3b3f8f0b309eecf0b78e0f3c607798c'
  name 'Qdesktop'
  homepage 'http://qvacua.com/'

  app 'Qdesktop.app'
end
