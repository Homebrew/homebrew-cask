cask 'flower-password' do
  version 'latest'
  sha256 '4b1af2cdbc0b66648ebaf2f116f90d31e71a6749ecdcc8c8d2ea11011af3f9fa'

  url "https://kisexu-file.b0.upaiyun.com/fp/app/huami-mac.zip"
  name 'Flower Password'
  homepage 'https://flowerpassword.com/'

  auto_updates true

  app 'HuaMiM.app'

  zap delete: "~/Library/Preferences/com.warwithinme.HuaMiM.plist"
end
