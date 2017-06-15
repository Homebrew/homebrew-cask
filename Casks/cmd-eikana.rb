cask 'cmd-eikana' do
  version '2.2.3'
  sha256 '8e4157304ae21566339e956423632d34aacd12c96e87f35ffc83bf2304ff9be4'

  url "https://github.com/iMasanari/cmd-eikana/releases/download/v#{version}/eikana-#{version}.app.zip"
  appcast 'https://github.com/iMasanari/cmd-eikana/releases.atom',
          checkpoint: 'e40616ed8d7a7b08955274084c954db289fe30e7abfe12989c01e3abf08bf2aa'
  name 'cmd-eikana'
  name '⌘英かな'
  homepage 'https://github.com/iMasanari/cmd-eikana'

  app '⌘英かな.app'

  zap delete: '~/Library/Preferences/io.github.imasanari.cmd-eikana.plist'
end
