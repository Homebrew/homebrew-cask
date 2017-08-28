cask 'scrutiny' do
  version '7.5.5'
  sha256 '3692ca7be75487999766f2fd7a5aca5debea206a90b6468ebb8c5df18eece06a'

  url 'http://peacockmedia.software/mac/scrutiny/scrutiny.dmg'
  appcast 'http://peacockmedia.software/mac/scrutiny/version_history.html',
          checkpoint: '50b6c966f3e646f152b388d775c7bb7ff5912731086f08c5619151317d7ef583'
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
