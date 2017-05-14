cask 'makeiphoneringtone' do
  version '1.3.5'
  sha256 'a7d06d2d1ee496c534e77da69362c91d6acef5f1ff9edf7713a572dbd60eaf8a'

  url "https://rogueamoeba.com/legacy/downloads/MakeiPhoneRingtone-#{version.no_dots}.zip"
  appcast 'https://rogueamoeba.com/freebies/version-mir.rss',
          checkpoint: '3fbc49574d199b91687894fa3cc64d219838dcb5f52fde13e793704de5833e6e'
  name 'MakeiPhoneRingtone'
  homepage 'https://rogueamoeba.com/freebies/'

  app 'MakeiPhoneRingtone.app'

  caveats do
    discontinued
  end
end
