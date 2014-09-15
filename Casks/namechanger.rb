class Namechanger < Cask
  version '2.3.3'
  sha256 '3731773e2be9af5c0cda15aa4368393ebe05084e6a29a03a38756b5f4049fc8d'

  url 'http://www.mrrsoftware.com/Downloads/NameChanger/Updates/NameChanger-2_3_3.zip'
  appcast 'http://mrrsoftware.com/Downloads/NameChanger/Updates/NameChangerSoftwareUpdates.xml'
  homepage 'http://www.mrrsoftware.com/MRRSoftware/NameChanger.html'

  app 'NameChanger.app'
end
