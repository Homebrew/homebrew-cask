class PaymoWidget < Cask
  version '4.0.16'
  sha256 '41f1c75fb705f035a96d5f33ca99c374632a00349505775184eb0eaa3d8fda8a'

  url 'https://app.paymoapp.com/desktop-apps/paymowidget/PaymoWidget_mac_4.0.16.dmg'
  homepage 'https://app.paymoapp.com/'
  license :gpl

  app 'PaymoWidget.app'
end
