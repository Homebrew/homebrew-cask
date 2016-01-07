cask 'dupeguru-pe' do
  version '2.10.1'
  sha256 '5a0abebfe3932fe0df10bd301f37d884f987537f1d137fecd2263db82f0457a9'

  url "https://download.hardcoded.net/dupeguru_pe_osx_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.hardcoded.net/updates/dupeguru_pe.appcast',
          :sha256 => '8177a1f729d412b97f5ac2d5cf52f221c5167cdac1cca62e7601726c12a4dff9'
  name 'dupeGuru Picture Edition'
  homepage 'https://www.hardcoded.net/dupeguru_pe/'
  license :bsd

  app 'dupeGuru PE.app'
end
