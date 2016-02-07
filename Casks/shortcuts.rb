cask 'shortcuts' do
  version '1.0.0'
  sha256 '1881958abf9078656de1dac1ccc50777f363f5602183260abe2a8b30dc76c4c6'

  url "https://github.com/siong1987/shortcuts/releases/download/#{version}/restart.sleep.shutdown.logout.lock.zip"
  appcast 'https://github.com/siong1987/shortcuts/releases.atom',
          checkpoint: '88bf233a99b98a6c7998366b83f6352ee71c0d16f485c1fae011ccc4978d6da2'
  name 'Restart/Sleep/Logout/Shutdown/Lock Shortcuts'
  homepage 'https://github.com/siong1987/shortcuts'
  license :mit

  suite 'system', target: 'Shortcuts'
end
