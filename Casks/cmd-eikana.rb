cask 'cmd-eikana' do
  version '2.1.0'
  sha256 '9bf61b3bd4c5bff1dfa97828b78b202e946c9e17f4d3544cd273fd637655db41'

  url "https://github.com/iMasanari/cmd-eikana/releases/download/v#{version}/eikana-#{version}.app.zip"
  appcast 'https://github.com/iMasanari/cmd-eikana/releases.atom',
          checkpoint: '59bbb85ee092d59af46bde7efba2537e64a9734906e9b17ee3b9f9d80fb84ae6'
  name 'cmd-eikana'
  name '⌘英かな'
  homepage 'https://github.com/iMasanari/cmd-eikana'

  app '⌘英かな.app'

  zap delete: '~/Library/Preferences/io.github.imasanari.cmd-eikana.plist'
end
