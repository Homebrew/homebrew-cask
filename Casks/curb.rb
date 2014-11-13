cask :v1 => 'curb' do
  version '1.1.1'
  sha256 '832750d2a75272763c5c2f681b11670584626c9d93bf993d6b3af96234558f68'

  url "http://mrrsoftware.com/Downloads/Curb/Curb-#{version.gsub('.','_')}.zip"
  appcast 'http://www.mrrsoftware.com/Downloads/Curb/CurbSoftwareUpdates.xml',
          :sha256 => '2025c4fc40a80f7ca7fb4076deb357a133990ef0e9576ceb5a5dca5f03a7c500'
  homepage 'http://mrrsoftware.com/curb'
  license :unknown

  app 'Curb.app'
end
