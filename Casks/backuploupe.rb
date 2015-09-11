cask :v1 => 'backuploupe' do
  version '2.8'
  sha256 '99112881a1b9e9ac5db8466cdad86f4ba2ef251eda61e59baaf6ec53e22571fb'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  name 'BackupLoupe'
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          :sha256 => 'fb2a32b33bcefd8fb5531fc0285cdf29131817e266219cdc4a17d9acbfb67ee0'
  homepage 'http://www.soma-zone.com/BackupLoupe/'
  license :commercial

  app 'BackupLoupe.app'
end
