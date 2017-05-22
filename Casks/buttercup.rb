cask 'buttercup' do
  version '0.16.0'
  sha256 '3d98eecc9792131146221896989e8b77264a216b37a29162b42160e1aa31f1a1'

  # github.com/buttercup/buttercup was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup/releases/download/v#{version}/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup/releases.atom',
          checkpoint: 'e933253ed823eae796a453fd953c38f34160e3af1f8e7071ca06bb2b2fad083c'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
