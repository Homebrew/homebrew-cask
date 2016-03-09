cask 'makeiphoneringtone' do
  version '1.3.5'
  sha256 'a7d06d2d1ee496c534e77da69362c91d6acef5f1ff9edf7713a572dbd60eaf8a'

  url 'https://rogueamoeba.com/freebies/download/MakeiPhoneRingtone.zip'
  appcast 'https://rogueamoeba.com/freebies/version-mir.rss',
          checkpoint: '537cf0c3d30d57c1fa5912271b9b00f335d87caffd13ebd2fe762caaa7ea9f13'
  name 'MakeiPhoneRingtone'
  homepage 'https://rogueamoeba.com/freebies/'
  license :gratis

  app 'MakeiPhoneRingtone.app'
end
