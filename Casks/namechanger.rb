cask :v1 => 'namechanger' do
  version '2.3.3'
  sha256 '3731773e2be9af5c0cda15aa4368393ebe05084e6a29a03a38756b5f4049fc8d'

  url "http://www.mrrsoftware.com/Downloads/NameChanger/Updates/NameChanger-#{version.gsub('.','_')}.zip"
  appcast 'http://mrrsoftware.com/Downloads/NameChanger/Updates/NameChangerSoftwareUpdates.xml',
          :sha256 => 'f8e9f7e32a1402b6a1be71963ee33e79c86244ba2f6ca1fcf52e644b1c235192'
  homepage 'http://www.mrrsoftware.com/MRRSoftware/NameChanger.html'
  license :unknown

  app 'NameChanger.app'
end
