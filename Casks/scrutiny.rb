cask 'scrutiny' do
  version '7.6.13'
  sha256 'e5274a8bfff3015f64b9470cb8e6229945d8fd3bf89d3ffd1bf545266ab476c9'

  url 'http://peacockmedia.software/mac/scrutiny/scrutiny.dmg'
  appcast 'http://peacockmedia.software/mac/scrutiny/version_history.html',
          checkpoint: '994a1298e09dd1d5c953ee511fa98ae33b5421c9c809b6cdedf9f618cafb4896'
  name 'Scrutiny'
  homepage 'http://peacockmedia.software/mac/scrutiny/'

  app "Scrutiny #{version.major}.app"

  zap trash: [
               "~/Library/Application Support/Scrutiny #{version.major}",
               "~/Library/Caches/com.peacockmedia.Scrutiny-#{version.major}",
               "~/Library/Cookies/com.peacockmedia.Scrutiny-#{version.major}.binarycookies",
               "~/Library/Preferences/com.peacockmedia.Scrutiny-#{version.major}.plist",
             ]
end
