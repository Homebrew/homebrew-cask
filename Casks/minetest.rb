cask 'minetest' do
  version '5.1.0'

  if MacOS.version <= :high_sierra
    sha256 'cebe39a206ec1d950d8c3e77b94d2b8e4f1953350d9b0ae5ece220de082f531c'
    url "https://bintray.com/homebrew/bottles/download_file?file_path=minetest-#{version}.high_sierra.bottle.tar.gz"
  elsif MacOS.version <= :mojave
    sha256 '656842e7896dcc6458522201d9a6ec2ccd6f09daf249a1145387122c52af74bb'
    url "https://bintray.com/homebrew/bottles/download_file?file_path=minetest-#{version}.mojave.bottle.tar.gz"
  else
    sha256 'e6774d4217375c164de190acccfbc208ca7c9e5a491b0584450090ea7d393b65'
    url "https://bintray.com/homebrew/bottles/download_file?file_path=minetest-#{version}.catalina.bottle.tar.gz"
  end

  appcast 'https://github.com/minetest/minetest/releases.atom'
  name 'Minetest'
  homepage 'https://www.minetest.net/'

  app "minetest/#{version}/minetest.app"

  zap delete: [
                '~/Library/Application Support/minetest',
                '~/Library/Saved Application State/net.minetest.minetest.savedState',
              ]
end
