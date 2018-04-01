cask 'endlesssky' do
  version '0.9.8'
  sha256 'b233c7b7aa3c87346abc325ea2958c7d36a17d276760b926184af7a23b454ec2'

  # github.com/endless-sky/endless-sky was verified as official when first introduced to the cask
  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macosx-#{version}.dmg"
  appcast 'https://github.com/endless-sky/endless-sky/releases.atom',
          checkpoint: 'd89c3a725f46815f56dde4ca2f90b1c0f6047f4ac1a7666cb694ed39fd50720e'
  name 'Endless Sky'
  homepage 'https://endless-sky.github.io/'

  app 'EndlessSky.app'
end
