cask 'scrutiny' do
  version '7.5.3'
  sha256 '3692ca7be75487999766f2fd7a5aca5debea206a90b6468ebb8c5df18eece06a'

  url 'http://peacockmedia.software/mac/scrutiny/scrutiny.dmg'
  appcast "http://peacockmedia.software/mac/scrutiny/updates/v#{version.major}currentversion.plist",
          checkpoint: '9611e910e878931d72d0d42fe0858304cfa0429a2b48b5a851ce57bc3e868f07'
  name 'Scrutiny'
  homepage 'http://peacockmedia.software/mac/scrutiny/'

  app "Scrutiny #{version.major}.app"

  zap delete: [
                "~/Library/Caches/com.peacockmedia.Scrutiny-#{version.major}",
                "~/Library/Cookies/com.peacockmedia.Scrutiny-#{version.major}.binarycookies",
              ],
      trash:  [
                "~/Library/Application Support/Scrutiny #{version.major}",
                "~/Library/Preferences/com.peacockmedia.Scrutiny-#{version.major}.plist",
              ]
end
