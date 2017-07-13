cask 'foxtel-go' do
  version :latest
  sha256 :no_check

  url 'https://www.foxtel.com.au/content/dam/foxtel/shared/app/foxtel-go/setupFoxtelGoMac.pkg'
  name 'Foxtel Go'
  homepage 'https://www.foxtel.com.au/foxtel-app.html'

  depends_on cask: 'silverlight'

  app 'Foxtel Go.app'

  uninstall pkgutil: 'com.Foxtel.foxtelGo.FoxtelGoFiles.pkg'
end
