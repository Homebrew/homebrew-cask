cask :v1 => 'makeiphoneringtone' do
  version :latest
  sha256 :no_check

  url 'http://rogueamoeba.com/freebies/download/MakeiPhoneRingtone.zip'
  name 'MakeiPhoneRingtone'
  appcast 'https://rogueamoeba.com/freebies/version-mir.rss',
          :sha256 => '537cf0c3d30d57c1fa5912271b9b00f335d87caffd13ebd2fe762caaa7ea9f13'
  homepage 'http://rogueamoeba.com/freebies/'
  license :gratis

  app 'MakeiPhoneRingtone.app'
end
