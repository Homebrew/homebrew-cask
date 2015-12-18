cask 'namechanger' do
  version '3.0.2'
  sha256 '1aaa59d31eb2cf49f8a20fd0e34fff2174b16fb74b6242ead4ad5be13505c9fd'

  url "http://www.mrrsoftware.com/Downloads/NameChanger/Updates/NameChanger-#{version.gsub('.','_')}.zip"
  appcast 'http://mrrsoftware.com/Downloads/NameChanger/Updates/NameChangerSoftwareUpdates.xml',
          :sha256 => '96883950ff45e3ff57b2a1257d1c4dd4df0ab38a895a186023968ed4ea164dd3'
  name 'NameChanger'
  homepage 'http://www.mrrsoftware.com/MRRSoftware/NameChanger.html'
  license :gratis

  app 'NameChanger.app'
end
