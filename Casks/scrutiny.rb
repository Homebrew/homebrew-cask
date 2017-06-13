cask 'scrutiny' do
  version '7'
  sha256 :no_check # required as upstream package is updated in-place

  url 'http://peacockmedia.software/mac/scrutiny/scrutiny.dmg'
  name 'Scrutiny'
  homepage 'http://peacockmedia.software/mac/scrutiny/'

  app "Scrutiny #{version}.app"

  zap delete: [
                "~/Library/Application Support/Scrutiny#{version}",
                "~/Library/Caches/com.peacockmedia.Scrutiny#{version}",
                "~/Library/Preferences/com.peacockmedia.Scrutiny#{version}.plist",
                "~/Library/Cookies/com.peacockmedia.Scrutiny#{version}.binarycookies",
              ]
end
