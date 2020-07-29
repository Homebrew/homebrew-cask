cask 'ssh-config-editor' do
  version '1.13.1,56'
  sha256 '6305e3b0f4242e22bccc8f4776b3b0cebc5e7703e58125ac08b55f6468f666c0'

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
