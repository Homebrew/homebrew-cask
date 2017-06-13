cask 'cmd-eikana' do
  version '2.2.1'
  sha256 '483d0e80f723cad860adaf8fcd28f8161360cf7b0ab4e1cdca73be3b04337c26'

  url "https://github.com/iMasanari/cmd-eikana/releases/download/v#{version}/eikana-#{version}.app.zip"
  appcast 'https://github.com/iMasanari/cmd-eikana/releases.atom',
          checkpoint: 'bbf8ce2d63895d64f6309c5ea4f808d3a2c11d3dc2c513394dcaae37e6426685'
  name 'cmd-eikana'
  name '⌘英かな'
  homepage 'https://github.com/iMasanari/cmd-eikana'

  app '⌘英かな.app'

  zap delete: '~/Library/Preferences/io.github.imasanari.cmd-eikana.plist'
end
