cask :v1 => 'sandvox' do
  version :latest
  sha256 :no_check

  url 'http://www.karelia.com/files/8/Sandvox.dmg'
  name 'Sandvox'
  homepage 'https://www.karelia.com/products/sandvox/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Sandvox.app'
end
