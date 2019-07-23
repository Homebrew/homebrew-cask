cask 'controlplane' do
  version '1.6.7'
  sha256 'beb444b8117ed91898921a6babc384501dfd92679f5b718fceb6d3aa7a0bf651'

  # uc7623c46083c7e293e1e735ccb3.dl.dropboxusercontent.com was verified as official when first introduced to the cask
  url "https://uc7623c46083c7e293e1e735ccb3.dl.dropboxusercontent.com/cd/0/get/AlPevCimNr-vZXgD2_x2Mh7r-YuYblzCbC9lL3zOCypF0DLpyhWuwPeMwMuWXbaMKhSh0xEY99Ba7iV4adZdJc6QEH4OiuoYWowGiBqY23hYxg/file?dl=1"
  name 'ControlPlane'
  homepage 'https://www.controlplaneapp.com/'

  app 'ControlPlane.app'

  zap trash: '~/Library/Preferences/com.dustinrue.ControlPlane.plist'
end
