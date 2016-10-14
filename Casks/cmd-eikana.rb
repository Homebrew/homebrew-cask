cask 'cmd-eikana' do
  version '2.0.1'
  sha256 '5419633d75ac9697820e5ef4c3db4b311a4320f02056b42076f996c063fe9c26'

  url "https://github.com/iMasanari/cmd-eikana/releases/download/v#{version}/eikana-#{version}.app.zip"
  appcast 'https://github.com/iMasanari/cmd-eikana/releases.atom',
          checkpoint: '28dad6cb69e5960fe5d4730981ae2e7769ef0d1b59bbe46e72bddcfaf7308370'
  name 'cmd-eikana'
  name '⌘英かな'
  homepage 'https://github.com/iMasanari/cmd-eikana'

  app '⌘英かな.app'

  zap delete: '~/Library/Preferences/io.github.imasanari.cmd-eikana.plist'
end
