cask 'scrutiny' do
  version '8.0.10'
  sha256 'c38638cab8d95dc70f3a379202fbccf167a0c2e033d1f9cd4272960efdeb6f4a'

  url 'http://peacockmedia.software/mac/scrutiny/scrutiny.dmg'
  appcast 'http://peacockmedia.software/mac/scrutiny/version_history.html',
          checkpoint: 'b377dca6631478dda075050d1283f62874e62b4166e0104b2db08d74461710e5'
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
