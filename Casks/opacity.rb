cask :v1 => 'opacity' do
  version :latest
  sha256 :no_check

  url 'http://downloads.likethought.com/opacity.zip'
  name 'Opacity'
  homepage 'http://likethought.com/opacity/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opacity.app'
end
