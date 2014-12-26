cask :v1 => 'dupeguru-pe' do
  version '2.10.1'
  sha256 '5a0abebfe3932fe0df10bd301f37d884f987537f1d137fecd2263db82f0457a9'

  url "http://download.hardcoded.net/dupeguru_pe_osx_#{version.gsub('.', '_')}.dmg"
  homepage 'http://www.hardcoded.net/dupeguru_pe/'
  license :bsd

  app 'dupeGuru PE.app'
end
