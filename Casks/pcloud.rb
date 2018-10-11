cask 'pcloud' do
  version '3.6.6'
  sha256 '682c573d92c1a61212907b9d570e74f2727a689aa8f32669044d848448cee3f7'

  url "https://p-def6.pcloud.com/cBZcBwLLpZq8cPupZZZIswvU7Z2ZZymFZkZruJykZi7Z6Z90Z8XZ4kZS0Zf0ZVXZSVZ5ZT7ZH0ZEkZ00Z0hFD7ZTSG9RPxEFzhvDk7pHK5ozyVJmBS7/pCloud%20Drive%20#{version}.pkg"
  appcast 'https://my.pcloud.com/publink/show?code=XZ0hFD7ZvooK6OmSWgBkSlfHCVCLRkVKt3jX'
  name 'pCloud Drive'
  homepage 'https://www.pcloud.com/'

  pkg "pCloud Drive #{version}.pkg"

  uninstall quit:    'com.pcloud.pcloud.macos',
            pkgutil: 'com.mobileinno.pkg.pCloudDrive'
end
