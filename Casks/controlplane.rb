cask 'controlplane' do
  version '1.6.6'
  sha256 'a9c9cdfe350bc9f038764a0b4c8f4337750113f44aacd68aa81b6f0aa391af1b'

  url "https://uc7623c46083c7e293e1e735ccb3.dl.dropboxusercontent.com/cd/0/get/AlPevCimNr-vZXgD2_x2Mh7r-YuYblzCbC9lL3zOCypF0DLpyhWuwPeMwMuWXbaMKhSh0xEY99Ba7iV4adZdJc6QEH4OiuoYWowGiBqY23hYxg/file?dl=1"
  name 'ControlPlane'
  homepage 'https://www.controlplaneapp.com/'

  app 'ControlPlane.app'

  zap trash: '~/Library/Preferences/com.dustinrue.ControlPlane.plist'
end
