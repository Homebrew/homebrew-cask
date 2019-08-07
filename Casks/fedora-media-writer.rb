cask 'fedora-media-writer' do
  version '4.1.4'
  sha256 '62c07e06b52a844da07cc7b19dee8a377b35f2990e58f9e872736866fe50faad'

  # github.com/FedoraQt/MediaWriter was verified as official when first introduced to the cask
  url "https://github.com/FedoraQt/MediaWriter/releases/download/#{version}/FedoraMediaWriter-osx-#{version}.dmg"
  appcast 'https://github.com/FedoraQt/MediaWriter/releases.atom'
  name 'Fedora Media Writer'
  homepage 'https://docs.fedoraproject.org/en-US/quick-docs/creating-and-using-a-live-installation-image/'

  app 'Fedora Media Writer.app'
end
