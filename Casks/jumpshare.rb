cask :v1 => 'jumpshare' do
  version :latest
  sha256 :no_check

  url "https://jumpshare.com/apps/mac/latest.zip"
  name 'Jumpshare'
  homepage 'https://jumpshare.com/'
  license :gratis

  app 'Jumpshare.app'
end
