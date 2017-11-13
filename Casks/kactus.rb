cask 'kactus' do
  version '0.2.13'
  sha256 '30dcc3117c9dcb14caf5a3ca6a0e74e9bed7431e15ffb850ec33cd8cece6ec6f'

  # github.com/kactus-io/kactus was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip"
  appcast 'https://github.com/kactus-io/kactus/releases.atom',
          checkpoint: '3d8d90cfcaf865f31bc4c94b88f125d8750acdfc70b4c9fb85871df125288c77'
  name 'Kactus'
  homepage 'https://kactus.io/'

  depends_on cask: 'sketch'

  app 'Kactus.app'
end
