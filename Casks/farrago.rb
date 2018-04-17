cask 'farrago' do
  version '1.0.3'
  sha256 'f3ea06b27162dbfb9461e463d241c2ab747cf5a15104a9e27c3c1d0ce8480372'

  url 'https://rogueamoeba.com/farrago/download/Farrago.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Farrago',
          checkpoint: 'c0eff5944eb2f89cd1ddf9ac03e2b10c20ce1652372104201a4a6a249dfd0c0f'
  name 'Farrago'
  homepage 'https://rogueamoeba.com/farrago/'

  app 'Farrago.app'
end
