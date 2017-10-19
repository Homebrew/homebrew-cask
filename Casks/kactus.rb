cask 'kactus' do
  version '0.2.10'
  sha256 'd745e0efb5caaf003fbc288b1ddf26df5c56d93200b74d8dbb8bd012d216347c'

  # github.com/kactus-io/kactus was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip"
  appcast 'https://github.com/kactus-io/kactus/releases.atom',
          checkpoint: '530498862bcf0ad5af71fd7830d8848376738a54d363b926ed861c504455655a'
  name 'Kactus'
  homepage 'https://kactus.io/'

  depends_on cask: 'sketch'

  app 'Kactus.app'
end
