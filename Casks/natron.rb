cask 'natron' do
  version '2.3.10'
  sha256 '3e70ea6078a43a07aa8c3bbd02e6dccbc80920e573e84efbd8279e248e576dac'

  url "https://downloads.natron.fr/Mac/releases/Natron-#{version}.dmg",
      referer: 'https://natron.fr/download/?os=Mac'
  appcast 'https://github.com/MrKepzie/Natron/releases.atom',
          checkpoint: '5c23b6da0499aad352b4f5e8f9435db3f2329d4c5b2b25725845e9759c060303'
  name 'Natron'
  homepage 'https://natron.fr/'

  app 'Natron.app'
end
