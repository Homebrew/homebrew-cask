cask :v1 => 'dupeguru-pe' do
  version '2.10.1'
  sha256 '5a0abebfe3932fe0df10bd301f37d884f987537f1d137fecd2263db82f0457a9'

  url "http://download.hardcoded.net/dupeguru_pe_osx_#{version.gsub('.', '_')}.dmg"
  name 'dupeGuru Picture Edition'
  appcast 'http://www.hardcoded.net/updates/dupeguru_pe.appcast',
          :sha256 => '901acf6cb3e33742d6ebd9908e7662934ec3ecde83e367677b2edf638f8196ae'
  homepage 'http://www.hardcoded.net/dupeguru_pe/'
  license :bsd

  app 'dupeGuru PE.app'
end
