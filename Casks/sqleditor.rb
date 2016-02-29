cask 'sqleditor' do
  version '2.9.15'
  sha256 'a007075ca5acd4e79ea47bc5cee41de3cc5684e0074c0b863d0b4a41b8e96606'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.gsub('.', '-')}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml',
          checkpoint: '8187506d61afd22bbad51c21b9b838383fb6d475d9878a7d6b8ca9bd91f9f577'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'
  license :commercial

  app 'SQLEditor.app'
end
