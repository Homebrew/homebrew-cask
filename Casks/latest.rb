cask 'latest' do
  version '0.6'
  sha256 '0d759f68ad915dfaf3132d7545d167ec437f4c1da528ca4e1ee4479704b86aab'

  url 'https://max.codes/latest/Latest.zip'
  appcast 'https://max.codes/latest/feed.xml'
  name 'Latest'
  homepage 'https://max.codes/latest'

  depends_on macos: '>= :sierra'

  app 'Latest.app'
end
