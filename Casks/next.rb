cask 'next' do
  version '0.08'
  sha256 '5d2feef32815f79e776bb7db543bc2e8e7bfd7e5ecdefa4e92c1c0d846b1db8a'

  url "https://github.com/next-browser/next/releases/download/#{version}/Next.dmg"
  appcast 'https://github.com/next-browser/next/releases.atom'
  name 'Next Browser'
  homepage 'https://github.com/next-browser/next'

  app 'Next.app'

  zap trash: '~/Library/Caches/next.browser'
end
