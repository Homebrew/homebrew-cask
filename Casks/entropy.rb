cask :v1 => 'entropy' do
  version :latest
  sha256 :no_check

  url 'http://www.eigenlogik.com/entropy/download'
  appcast 'http://hyperion.eigenlogik.com/appcast/feed/entropy/'
  homepage 'http://www.eigenlogik.com/entropy/'
  license :unknown

  app 'Entropy.app'
end
