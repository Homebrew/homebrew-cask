cask 'cmd-eikana' do
  version '2.2.3'
  sha256 '8e4157304ae21566339e956423632d34aacd12c96e87f35ffc83bf2304ff9be4'

  url "https://github.com/iMasanari/cmd-eikana/releases/download/v#{version}/eikana-#{version}.app.zip"
  appcast 'https://github.com/iMasanari/cmd-eikana/releases.atom',
          checkpoint: '3c6423032f1850dfd5358f8fac7e22d4aded4d3039c2b81b412d688aadcf773e'
  name 'cmd-eikana'
  name '⌘英かな'
  homepage 'https://github.com/iMasanari/cmd-eikana'

  app '⌘英かな.app'

  zap delete: '~/Library/Preferences/io.github.imasanari.cmd-eikana.plist'
end
