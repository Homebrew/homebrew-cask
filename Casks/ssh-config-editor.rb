cask 'ssh-config-editor' do
  version '1.13,54'
  sha256 '8df2ba02824e7908d2f9ddbb90999a0649cb9cbb0e2415675800bfa600fdbae3'

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
