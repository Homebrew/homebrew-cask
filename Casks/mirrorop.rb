cask 'mirrorop' do
  version :latest
  sha256 :no_check

  url 'https://www.barco.com/services/website/en/TdeFiles/Download?FileNumber=R33050100&TdeType=3&MajorVersion=2&MinorVersion=5&PatchVersion=0&BuildVersion=52&ShowDownloadPage=False'
  name 'MirrorOp Sender'
  homepage 'https://www.barco.com/product/mirrorop'

  app 'MirrorOp.app'
end
