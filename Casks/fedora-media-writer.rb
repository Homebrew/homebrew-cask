cask 'fedora-media-writer' do
  version '4.1.5'
  sha256 'c7e2284cb0a5fb5f4f54b8ed939b1549a09df3230e777ef7060b4d3b7a47e25c'

  # github.com/FedoraQt/MediaWriter/ was verified as official when first introduced to the cask
  url "https://github.com/FedoraQt/MediaWriter/releases/download/#{version}/FedoraMediaWriter-osx-#{version}.unnotarized.dmg"
  appcast 'https://github.com/FedoraQt/MediaWriter/releases.atom'
  name 'Fedora Media Writer'
  homepage 'https://docs.fedoraproject.org/en-US/quick-docs/creating-and-using-a-live-installation-image/'

  app 'Fedora Media Writer.app'
end
