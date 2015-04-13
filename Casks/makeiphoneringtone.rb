cask :v1 => 'makeiphoneringtone' do
  version :latest
  sha256 :no_check

  url 'http://rogueamoeba.com/freebies/download/MakeiPhoneRingtone.zip'
  name 'MakeiPhoneRingtone'
  homepage 'http://rogueamoeba.com/freebies/'
  license :gratis

  app 'MakeiPhoneRingtone.app'
end
