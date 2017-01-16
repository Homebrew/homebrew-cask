cask 'lacona' do
  version '1.1.3'
  sha256 '7fe34e71a8854de24396ca0b3c0dbf26f71bdbb75394c292f53450db85083be2'

  url "https://download.lacona.io/packages/#{version}/Lacona.zip"
  appcast 'https://download.lacona.io/appcast.xml',
          checkpoint: 'c7fcb976766ce370cea8326d97b538a20fe6f6e2dc05c4f119664c9d3f352ee3'
  name 'Lacona'
  homepage 'https://www.lacona.io/'

  auto_updates true

  app 'Lacona.app'

  postflight do
    suppress_move_to_applications
  end
end
