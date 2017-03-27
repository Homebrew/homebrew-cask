cask 'squad' do
  version '2.7.0'
  sha256 'abbc773046f0d303f3381e131a16577911028620ef6741b822f56fddbfd3a594'

  url "https://andrewschreiber.github.io/releases/squad_#{version.no_dots}.zip"
  appcast 'https://andrewschreiber.github.io/squadappcast.xml',
          checkpoint: '0242efe468fb4018e319b97796263a21951711d198e4069887d939f955968faa'
  name 'Squad'
  homepage 'https://andrewschreiber.github.io/2017/03/26/squad.html'

  app 'Squad.app'
end
