cask :v1 => 'opacity' do
  version :latest
  sha256 :no_check

  url 'http://downloads.likethought.com/opacity.zip'
  homepage 'http://likethought.com/opacity/'
  license :unknown    # todo: improve this machine-generated value

  app 'Opacity.app'
end
