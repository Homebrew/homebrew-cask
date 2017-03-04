cask 'robofont' do
  version '1.8.1,1612102134'
  sha256 '923b0d7f72a4e155e86fc9afa1e657dc240662d7470f5d93162b13c2359dd936'

  url "http://robofont.com/downloads/RoboFont_#{version.after_comma}.dmg"
  appcast 'http://robofont.com/downloads/',
          checkpoint: 'a3ceaaa950defd4e2a878892b7486bfc788283d065459e1689b083911741f4eb'
  name 'RoboFont'
  homepage 'https://doc.robofont.com/'

  depends_on macos: '>= :mavericks'

  app 'RoboFont.app'
end
