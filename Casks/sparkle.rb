cask 'sparkle' do
  version '1.18.0'
  sha256 '7256b93d78fb7eb69b26852379a5e7709e5e67b33d7726fc461097b6a7180616'

  # github.com/sparkle-project/Sparkle was verified as official when first introduced to the cask
  url "https://github.com/sparkle-project/Sparkle/releases/download/#{version}/Sparkle-#{version}.tar.bz2"
  appcast 'https://github.com/sparkle-project/Sparkle/releases.atom',
          checkpoint: '84a74248bab7cec6b2df5941f756f850bf75a71285b898c44b0603a5fb26ce37'
  name 'Sparkle'
  homepage 'https://sparkle-project.org/'

  app 'Sparkle Test App.app'
end
