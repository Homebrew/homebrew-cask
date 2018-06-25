cask 'photo-supreme-single-user' do
  version '4.1'
  sha256 'e4418575616c87715e768f20817d997308e5b449b992462e5b758db605bd9093'

  url "http://trial.idimager.com/PhotoSupreme_V#{version.major}.pkg"
  name 'Photo Supreme Single User'
  homepage 'http://www.idimager.com/WP/?page_id=20'

  pkg "PhotoSupreme_V#{version.major}.pkg"

  uninstall pkgutil: 'com.idimager.idimagersu'
end
