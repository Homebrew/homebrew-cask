cask 'next' do
  version '1.2.0 '
  sha256 '286e9af278797db6c41bbc9efd5c97e6d249734b4bca5df687ebaa481b35dc7b'

  url 'https://next.atlas.engineer/static/release/next-macos-webkit.dmg'
  appcast 'https://github.com/atlas-engineer/next/releases.atom'
  name 'Next Browser'
  homepage 'https://next.atlas.engineer/'

  app 'Next.app'

  zap trash: '~/Library/Caches/next.browser'
end
