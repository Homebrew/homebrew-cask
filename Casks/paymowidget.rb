cask :v1 => 'paymowidget' do
  version '4.0.16'
  sha256 '1b9c6485594d28a477ff115758780d22d25b1594963dadf3388239fa25f8fc78'

  url "https://app.paymoapp.com/desktop-apps/paymowidget/PaymoWidget_mac_#{version}.dmg"
  homepage 'https://app.paymoapp.com/'
  license :gpl

  app 'PaymoWidget.app'
end
