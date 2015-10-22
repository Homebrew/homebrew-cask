cask :v1 => 'jumpshare' do
  version '2.1.1'
  sha256 '8181e5b35bd02dda770f81ba8f39b83e3c1cde0b934e2e563d962ce4ea16fced'

  url "https://jumpshare.com/apps/mac/Jumpshare-#{version}.zip"
  name 'Jumpshare'
  homepage 'https://jumpshare.com/'
  license :gratis

  app 'Jumpshare.app'
end
