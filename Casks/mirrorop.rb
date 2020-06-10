cask 'mirrorop' do
  version '2.5.2.70'
  sha256 '95b72c5ceeed6a04bcc17515bab8fa4338702e0ed6686975de62e34e8709a6df'

  url "https://www.barco.com/services/website/en/TdeFiles/Download?FileNumber=R33050100&TdeType=3&MajorVersion=#{version.major}&MinorVersion=#{version.minor}&PatchVersion=#{version.patch}&BuildVersion=#{version.split('.')[-1]}"
  appcast 'https://www.barco.com/en/support/software/R33050100'
  name 'MirrorOp Sender'
  homepage 'https://www.barco.com/en/product/mirrorop'

  app 'MirrorOp.app'
end
