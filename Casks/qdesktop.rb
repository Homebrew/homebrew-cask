cask 'qdesktop' do
  version '0.1.2-6'
  sha256 '80091362a4350baf14aa0d78eae0078ee974f68b9fa440a75569a4e591d3813a'

  # github.com/qvacua/qdesktop was verified as official when first introduced to the cask
  url "https://github.com/qvacua/qdesktop/releases/download/v#{version}/Qdesktop-#{version.major_minor_patch}.zip"
  appcast 'http://qvacua.com/qdesktop/appcast.xml',
          checkpoint: '0b0de69503c4c5c113458705f0ca13e91bc87c0ca91e8a395ca25d5d80d39384'
  name 'Qdesktop'
  homepage 'http://qvacua.com/'

  app 'Qdesktop.app'
end
