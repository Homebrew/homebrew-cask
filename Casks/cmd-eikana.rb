cask 'cmd-eikana' do
  version '2.1.2'
  sha256 '994b228095eda7770e0292b8db7a72765a711433489d7de790721567eddcba80'

  url "https://github.com/iMasanari/cmd-eikana/releases/download/v#{version}/eikana-#{version}.app.zip"
  appcast 'https://github.com/iMasanari/cmd-eikana/releases.atom',
          checkpoint: 'a1cfd202f711379405b323239812fdca43b7f217c503bbcb952d52ba985eb832'
  name 'cmd-eikana'
  name '⌘英かな'
  homepage 'https://github.com/iMasanari/cmd-eikana'

  app '⌘英かな.app'

  zap delete: '~/Library/Preferences/io.github.imasanari.cmd-eikana.plist'
end
