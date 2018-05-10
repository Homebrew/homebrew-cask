cask 'next' do
  version '0.08'
  sha256 '5d2feef32815f79e776bb7db543bc2e8e7bfd7e5ecdefa4e92c1c0d846b1db8a'

  url "https://github.com/next-browser/next/releases/download/#{version}/Next.dmg"
  appcast 'https://github.com/next-browser/next/releases.atom',
          checkpoint: '87d4619eaf4bb026c226f87fb2a57dbf601a64f21698dfbcc8ff43cb49b4516d'
  name 'Next Browser'
  homepage 'https://github.com/next-browser/next'

  app 'Next.app'

  zap trash: '~/Library/Caches/next.browser'
end
