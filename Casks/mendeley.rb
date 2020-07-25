cask 'mendeley' do
  version '1.19.6'
  sha256 '3977ac55e78a528b3e78342cd1891f2fafa7e2b55789d1b46089ba3184fba596'

  url "https://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.mendeley.com/autoupdates/installer/Mac-x64/stable-incoming'
  name 'Mendeley Desktop'
  homepage 'https://www.mendeley.com/reference-management/mendeley-desktop'

  app 'Mendeley Desktop.app'
end
