cask 'fishapp' do
  version '2.3.0'
  sha256 'a32412af0966b14d9f5702f51b2ffb263fbef066aaa4471df7912f93202b2830'

  url "http://fishshell.com/files/#{version}/fish-#{version}.app.zip"
  name 'Fish App'
  homepage 'http://fishshell.com'
  license :gpl

  app 'fish.app'
end
