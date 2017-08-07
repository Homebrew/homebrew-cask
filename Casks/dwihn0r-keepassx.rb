cask 'dwihn0r-keepassx' do
  version '0.4.4'
  sha256 '53ae446d458ef0ab6dae268ba17b0eb9779959f3f821552de89122bd434769e2'

  url "https://github.com/dwihn0r/keepassx/releases/download/v#{version}/KeePassX-#{version}-OSX.zip"
  appcast 'https://github.com/dwihn0r/keepassx/releases.atom',
          checkpoint: '6331bb51a7d1d6d396eff1828a8a2eec42f35d721d9fe32c89ddce2a5cfa6b43'
  name 'KeePassX'
  homepage 'https://github.com/dwihn0r/keepassx/'

  app 'KeePassX.app'
end
