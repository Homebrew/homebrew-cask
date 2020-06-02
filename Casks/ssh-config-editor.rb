cask 'ssh-config-editor' do
  version '1.13,54'
  sha256 '314aa85f62a8424fa4b7a8214f42acdb39cda00f3b932ede2a6ac81acec1a942'

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
