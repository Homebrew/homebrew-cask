cask 'ssh-config-editor' do
  version '1.12.2,51'
  sha256 'b0e76dd9a10f436133934ff78a2dd2c203d449d1c39da8b10685c8173fab344e'

  url "https://hejki.org/download/ssheditor/SSHConfigEditor-#{version.after_comma}.zip"
  appcast 'https://hejki.org/download/ssheditor/appcast.xml'
  name 'SSH Config Editor'
  homepage 'https://www.hejki.org/ssheditor/'

  app 'SSH Config Editor.app'

  zap trash: [
               '~/Library/Application Support/SSH Config Editor',
               '~/Library/Preferences/org.hejki.osx.sshce.plist',
               '~/Library/Saved Application State/org.hejki.osx.sshce.savedState',
             ]
end
