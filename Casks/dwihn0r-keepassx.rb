cask 'dwihn0r-keepassx' do
  version '0.4.4'
  sha256 '53ae446d458ef0ab6dae268ba17b0eb9779959f3f821552de89122bd434769e2'

  url "https://github.com/dwihn0r/keepassx/releases/download/v#{version}/KeePassX-#{version}-OSX.zip"
  appcast 'https://github.com/dwihn0r/keepassx/releases.atom',
          checkpoint: '6ebc4f87131181279642354e21839d5d5993d58098fa661ea26863c81294ad8a'
  name 'KeePassX'
  homepage 'https://github.com/dwihn0r/keepassx/'
  license :gpl

  app 'KeePassX.app'
end
