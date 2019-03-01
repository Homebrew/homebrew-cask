cask 'goodsync' do
  version '10.9.26.81,648'
  sha256 '4a07a8a39b6dcb2c1d027603d2b4781c8b609da1c46996322dc088ffa942ae65'

  # rink.hockeyapp.net/api/2/apps/8b491acdaa8942108b5d8b019be7fcef was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/8b491acdaa8942108b5d8b019be7fcef/app_versions/#{version.after_comma}?format=zip&avtoken=6b1e930b304f74f53ebe6e776a505fa3bfbe6e6d&download_origin=hockeyapp"
  appcast 'https://rink.hockeyapp.net/api/2/apps/8b491acdaa8942108b5d8b019be7fcef'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
