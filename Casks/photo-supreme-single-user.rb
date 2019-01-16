cask 'photo-supreme-single-user' do
  version '4.3.2,1872'
  sha256 '358ad6bcbc71a0a82c77575a4538476288850174c48042dd00916cdc4e2333c6'

  url "https://trial.idimager.com/PhotoSupreme_V#{version.major}.pkg"
  name 'Photo Supreme Single User'
  homepage 'https://www.idimager.com/home'

  pkg "PhotoSupreme_V#{version.major}.pkg"

  uninstall pkgutil: 'com.idimager.idimagersu'
end
