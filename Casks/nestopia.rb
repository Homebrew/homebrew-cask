cask 'nestopia' do
  version :latest
  sha256 :no_check

  url 'http://www.bannister.org/cgi-bin/download.cgi?nestopia'
  name 'Nestopia'
  homepage 'http://www.bannister.org/software/nestopia.htm'

  app 'Nestopia.app'

  zap trash: [
               '~/Library/Application Support/Bannister/Nestopia',
               '~/Library/Preferences/com.bannister.nestopia.plist',
               '~/Library/Saved Application State/com.bannister.nestopia.savedState',
             ]
end
