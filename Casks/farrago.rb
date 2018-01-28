cask 'farrago' do
  version '1.0.0'
  sha256 '74ced5e9e6961850e3e8da17f03dc237f4eb6f2b171d76ff5110c37a41c76558'

  url 'https://rogueamoeba.com/farrago/download/Farrago.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Farrago',
          checkpoint: 'cc24e157dae5ce49cb7db12e622f9a0e5353d3bb04733982d1b1c9fa4cca945f'
  name 'Farrago'
  homepage 'https://rogueamoeba.com/farrago/'

  app 'Farrago.app'
end
