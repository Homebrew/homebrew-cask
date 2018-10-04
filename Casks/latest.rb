cask 'latest' do
  version '0.4.3'
  sha256 '00a81cc1482067eeb21c57314c76f24938db87953eda9a6d1265b7f72b04721a'

  url 'https://max.codes/latest/Latest.zip'
  appcast 'https://max.codes/latest/feed.xml'
  name 'Latest'
  homepage 'https://max.codes/latest'

  depends_on macos: '>= :sierra'

  app 'Latest.app'
end
