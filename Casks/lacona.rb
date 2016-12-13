cask 'lacona' do
  version '1.1.2'
  sha256 '07c410761091faad533073c10fbad7ad6802e0ce8aef6d1f1fa61f5b392fa2c9'

  url "https://download.lacona.io/packages/#{version}/Lacona.zip"
  appcast 'https://download.lacona.io/appcast.xml',
          checkpoint: 'fa0c84c376f2af8c8f9f7c87c42115bbd8e4c9304f6547282039146b2ed30898'
  name 'Lacona'
  homepage 'https://www.lacona.io/'

  auto_updates true

  app 'Lacona.app'

  postflight do
    suppress_move_to_applications
  end
end
