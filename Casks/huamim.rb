cask 'huamim' do
  version :latest
  sha256 :no_check

  # kisexu-file.b0.upaiyun.com/fp/app was verified as official when first introduced to the cask
  url 'https://kisexu-file.b0.upaiyun.com/fp/app/huami-mac.zip'
  name 'HuaMiM'
  name 'Flower Password'
  homepage 'https://flowerpassword.com/'

  auto_updates true

  app 'HuaMiM.app'

  zap trash: '~/Library/Preferences/com.warwithinme.HuaMiM.plist'
end
