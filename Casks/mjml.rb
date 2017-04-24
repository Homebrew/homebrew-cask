cask 'mjml' do
  version '2.0.0'
  sha256 '90523caaea7b3a391cafd9c423a8db8f4b5a3f4f49a1a9e7654d4de911588bed'

  # github.com/mjmlio/mjml-app was verified as official when first introduced to the cask
  url "https://github.com/mjmlio/mjml-app/releases/download/#{version}/mjml-app-osx_#{version}.dmg"
  appcast 'https://github.com/mjmlio/mjml-app/releases.atom',
          checkpoint: 'af7a682eb55ee1a3b5334795ea8a4cab00e517b69da3d29f32b39fa61e239043'
  name 'MJML'
  homepage 'https://mjmlio.github.io/mjml-app/'

  app 'MJML.app'
end
