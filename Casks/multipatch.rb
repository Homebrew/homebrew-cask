cask 'multipatch' do
  version '1.6.2'
  sha256 '58e0fcf1da4aee262dbc93b3df3e36f572866d5246472671f11115284dd85622'

  url "http://projects.sappharad.com/tools/multipatch#{version.no_dots}.zip"
  name 'MultiPatch'
  homepage 'http://projects.sappharad.com/tools/multipatch.html'

  app 'MultiPatch/MultiPatch.app'

  zap trash: [
               '~/Library/Preferences/com.sappharad.MultiPatch.plist',
               '~/Library/Saved Application State/com.sappharad.MultiPatch.savedState',
             ]
end
