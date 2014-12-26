cask :v1 => 'entropy' do
  version :latest
  sha256 :no_check

  url 'http://www.eigenlogik.com/entropy/download'
  appcast 'http://hyperion.eigenlogik.com/appcast/feed/entropy/'
  homepage 'http://www.eigenlogik.com/entropy/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Entropy.app'
end
