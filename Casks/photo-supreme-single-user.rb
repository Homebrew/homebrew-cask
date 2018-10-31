cask 'photo-supreme-single-user' do
  version '4.3.0'
  sha256 '1f0e953449fb534c6cb316adc91f9f3e09611ded9b2844ccf6ad61d2d508c253'

  url "https://trial.idimager.com/PhotoSupreme_V#{version.major}.pkg"
  name 'Photo Supreme Single User'
  homepage 'https://www.idimager.com/home'

  pkg "PhotoSupreme_V#{version.major}.pkg"

  uninstall pkgutil: 'com.idimager.idimagersu'
end
