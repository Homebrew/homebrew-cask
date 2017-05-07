cask 'mjml' do
  version '2.1.0'
  sha256 '079d8ce7e62ac1f780530d375361e85410d60c319e6f8ac7392398c7a042bb47'

  # github.com/mjmlio/mjml-app was verified as official when first introduced to the cask
  url "https://github.com/mjmlio/mjml-app/releases/download/#{version}/mjml-app-osx_#{version}.dmg"
  appcast 'https://github.com/mjmlio/mjml-app/releases.atom',
          checkpoint: '8c2244aa5349f7955680dc71c5ea402567fc28abfd1cb4fea916e490844a15f6'
  name 'MJML'
  homepage 'https://mjmlio.github.io/mjml-app/'

  app 'MJML.app'
end
