cask 'mirador' do
  version '1.4'
  sha256 '4131c4114fba598e86b803d20ba1ef9732b7b92897b6c4b753ae62e892d9bdf1'

  # github.com/mirador/mirador was verified as official when first introduced to the cask
  url "https://github.com/mirador/mirador/releases/download/#{version}/mirador-macosx-#{version}.zip"
  appcast 'https://github.com/mirador/mirador/releases.atom',
          checkpoint: 'f170ed80b82bb18d60baca9c3310a9039ce8b88ee1c023f02a6a676bd0f6cdf6'
  name 'Mirador'
  homepage 'https://fathom.info/mirador/'

  app 'Mirador.app'
end
