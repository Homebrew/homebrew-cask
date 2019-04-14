cask 'insta360-studio' do
  version '3.3.2_20190314'
  sha256 '251b9b7c60f23883eeaa2266e7c64e91b97e356634f22d0cdc91e119afe70a38'

  url "https://static.insta360.com/software/Studio/Mac/Insta360%20Studio%202019_Mac_#{version}.pkg"
  name 'Insta360 Studio'
  homepage 'https://www.insta360.com/'

  pkg "Insta360 Studio 2019_Mac_#{version}.pkg"

  uninstall quit:    'com.insta360.studio',
            pkgutil: [
                       'com.insta360.PremierePlugin',
                       'com.insta360.insta360Studio',
                     ]

  zap trash: '~/Library/Application Support/Insta360'
end
