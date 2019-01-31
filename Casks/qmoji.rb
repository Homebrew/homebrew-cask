cask 'qmoji' do
  version '1.3'
  sha256 '094088d3e9bba789f4806eed99cc55b54cd5734f5ed511acdb6bfbe3c0e39479'

  url "https://github.com/jaredly/qmoji/releases/download/#{version}/qmoji.zip"
  appcast 'https://github.com/jaredly/qmoji/releases.atom'
  name 'qmoji'
  homepage 'https://github.com/jaredly/qmoji'

  app 'qmoji.app'
end
