cask 'maczip4win' do
  version '0.4.1'
  sha256 '169e84b66dfd2d513385c86726a8c78c37cf73c8c2bf753ddb6fd112d7b38ec7'

  url "http://ynomura.com/files/MacZip4win_#{version.dots_to_underscores}.zip"
  name 'MacZip4Win'
  homepage 'http://ynomura.com/home/?page_id=116'

  app "MacZip4win #{version}/MacZip4Win.app"
end
