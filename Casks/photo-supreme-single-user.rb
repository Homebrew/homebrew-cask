cask 'photo-supreme-single-user' do
  version '4.3.1'
  sha256 '38107e8e10d03274668d3056a717e7bfd502f5f71ac7894303757fff4012e47c'

  url "https://trial.idimager.com/PhotoSupreme_V#{version.major}.pkg"
  name 'Photo Supreme Single User'
  homepage 'https://www.idimager.com/home'

  pkg "PhotoSupreme_V#{version.major}.pkg"

  uninstall pkgutil: 'com.idimager.idimagersu'
end
