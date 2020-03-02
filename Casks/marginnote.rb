cask 'marginnote' do
  version '3.6.4004'
  sha256 '39a8d11bb63dee2aacdf30199242f64a76e9888add2159a479f91321d7b8ea42'

  # appcenter-filemanagement-distrib5ede6f06e.azureedge.net/ was verified as official when first introduced to the cask
  url "https://appcenter-filemanagement-distrib5ede6f06e.azureedge.net/6182955f-2d2c-4394-b8db-5f3ca321be72/MarginNote#{version.major}.dmg?sv=2018-03-28&sr=c&sig=cT2ZrVN7YAv3ulvnULUGiBCk8FQxxcmuVHPL3Vh32LA%3D&se=2020-03-03T12%3A53%3A28Z&sp=r"
  appcast 'https://api.appcenter.ms/v0.1/public/sparkle/apps/1451f4f6-9214-4d46-b91c-d5898c7e42cb'
  name 'MarginNote'
  homepage 'https://www.marginnote.com/'

  auto_updates true

  app "MarginNote #{version.major}.app"

  zap trash: [
               '~/Library/Application Support/QReader.MarginStudyMac',
               '~/Library/Containers/QReader.MarginStudyMac',
             ]
end
