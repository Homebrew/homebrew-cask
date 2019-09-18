cask 'roku-remote-tool' do
  version '3.0.21'
  sha256 '7a615293c9773f0f22e5d1e97e16751aa959b6b3816303b1375a31bb42854ec4'

  url 'https://devtools.web.roku.com/RokuRemote/app/roku-remote-tool-mac.zip'
  name 'Roku Remote Tool'
  homepage 'https://devtools.web.roku.com/RokuRemote/electron.html'

  app 'roku_remote_tool.app', target: 'Roku Remote Tool.app'

  uninstall delete: [
                      '~/Library/Application Support/roku_remote_tool',
                      '~/Library/Preferences/com.rokuremotetool.plist',
                      '~/Library/Logs/roku_remote_tool',
                    ]
end
