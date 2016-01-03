cask 'dupeguru-pe' do
  version '2.10.1'
  sha256 '5a0abebfe3932fe0df10bd301f37d884f987537f1d137fecd2263db82f0457a9'

  url "https://download.hardcoded.net/dupeguru_pe_osx_#{version.gsub('.', '_')}.dmg"
  appcast 'https://www.hardcoded.net/updates/dupeguru_pe.appcast',
          :sha256 => '0701e9b52a39df2198dae34a4bfef88ca84d75d4ce191dd88943437af921737a'
  name 'dupeGuru Picture Edition'
  homepage 'https://www.hardcoded.net/dupeguru_pe/'
  license :bsd

  app 'dupeGuru PE.app'
end
