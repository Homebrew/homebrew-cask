cask 'mirrorop' do
  version '2.5.1.61'
  sha256 'a6b0c38e5e78a5b1eaddcc59522a6270614c1806a7012f326a6397b364df26b7'

  url "https://www.barco.com/services/website/en/TdeFiles/Download?FileNumber=R33050100&TdeType=3&MajorVersion=#{version.major}&MinorVersion=#{version.minor}&PatchVersion=#{version.patch}&BuildVersion=#{version.split('.')[-1]}"
  appcast 'https://www.barco.com/en/support/software/R33050100'
  name 'MirrorOp Sender'
  homepage 'https://www.barco.com/en/product/mirrorop'

  app 'MirrorOp.app'
end
