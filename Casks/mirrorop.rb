cask 'mirrorop' do
  version '2.5.0.52'
  sha256 '00583d9f5e282fcd32cc0d940c9eec24aea5aeb34793d274a4cf0df28de924b8'

  url "https://www.barco.com/services/website/en/TdeFiles/Download?FileNumber=R33050100&TdeType=3&MajorVersion=#{version.major}&MinorVersion=#{version.minor}&PatchVersion=#{version.patch}&BuildVersion=#{version.split('.')[-1]}"
  appcast 'https://www.barco.com/en/support/mirrorop/drivers'
  name 'MirrorOp Sender'
  homepage 'https://www.barco.com/en/product/mirrorop'

  app 'MirrorOp.app'
end
