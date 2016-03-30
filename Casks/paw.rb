cask 'paw' do
  version '2.3.2'
  sha256 '392d31d9ffacf769b1b94ac172c3e61478a740247e020db90f7bf5d70c5c073f'

  url "https://luckymarmot.com/paw/download/#{version}"
  appcast "https://luckymarmot.com/api/v#{version.major}/updates/appcast",
          checkpoint: 'd4e55fea3c983fecad58e295d2ba789a8e532338022483dcac6dc9d22b85f251'
  name 'Paw'
  homepage 'https://luckymarmot.com/paw'
  license :commercial

  app 'Paw.app'
end
