cask 'chronos' do
  version '3.2.6'
  sha256 'd9252b42d1a18211dc5d639593a51bee8593ee14309b86c991cc1c36bcf580cd'

  url "https://github.com/web-pal/chronos-timetracker/releases/download/v#{version}/Chronos-#{version}-mac.zip"
  appcast 'https://github.com/web-pal/chronos-timetracker/releases.atom'
  name 'Chronos Timetracker'
  homepage 'https://github.com/web-pal/chronos-timetracker'

  app 'Chronos.app'
end
