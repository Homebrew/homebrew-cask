cask 'patchwork' do
  version '3.8.8'
  sha256 'c98a566f7fb3843048ce7d6ae17b6c6315a2f67c751827e97a4f0e2fe02b0bc4'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}-mac.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom',
          checkpoint: '7b12049462445401d19932e28d9512d3531ffa15047c31549bb331c7481d2ab8'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
