cask 'photo-supreme-single-user' do
  version '4.3.2,1878'
  sha256 'e245c40e270bf0e252cfaffc96c6b8a999b7c82f0cfb43c3b748fc485006a98a'

  url "https://trial.idimager.com/PhotoSupreme_V#{version.major}.pkg"
  name 'Photo Supreme Single User'
  homepage 'https://www.idimager.com/home'

  pkg "PhotoSupreme_V#{version.major}.pkg"

  uninstall pkgutil: 'com.idimager.idimagersu'
end
