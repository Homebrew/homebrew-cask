cask 'latest' do
  version '0.4.4'
  sha256 '5c61d2fdec9bdbfc60d55d107c82505a7c8f6708f083c0a8f958a8e0e14ac19f'

  url 'https://max.codes/latest/Latest.zip'
  appcast 'https://max.codes/latest/feed.xml'
  name 'Latest'
  homepage 'https://max.codes/latest'

  depends_on macos: '>= :sierra'

  app 'Latest.app'
end
