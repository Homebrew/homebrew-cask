cask 'moneyguru' do
  version '2.10.1'
  sha256 'ee295b4be8c328fde8b90d73f979dd849c0bef87cac9c8983b351f80bb75a5c4'

  url "https://download.hardcoded.net/moneyguru_osx_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.hardcoded.net/updates/moneyguru.appcast',
          checkpoint: 'edea007960a8e8fac72694160a69a0e61f28204267bfd724a0894d0e9ad827f5'
  name 'moneyGuru'
  homepage 'https://www.hardcoded.net/moneyguru/'
  license :bsd

  app 'moneyGuru.app'
end
