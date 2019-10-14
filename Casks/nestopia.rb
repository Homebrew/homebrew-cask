cask 'nestopia' do
  version '1.4.2'
  sha256 '59792eaac94350c497c472805c07ed1e1f422a94b4cf2746801b8af71c9ef18f'

  url 'https://www.bannister.org/cgi-bin/download.cgi?nestopia'
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.bannister.org/cgi-bin/download.cgi%3Fnestopia'
  name 'Nestopia'
  homepage 'https://www.bannister.org/software/nestopia.htm'

  depends_on macos: '>= :el_capitan'

  app "Nestopia v#{version}/Nestopia.app"

  zap trash: [
               '~/Library/Application Support/Bannister/Nestopia',
               '~/Library/Preferences/com.bannister.nestopia.plist',
               '~/Library/Saved Application State/com.bannister.nestopia.savedState',
             ]
end
