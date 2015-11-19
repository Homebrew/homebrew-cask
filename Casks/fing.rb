cask :v1 => 'fing' do
  version '2.3'
  sha256 'ffa5d42e023d0da50eed152b78f91b1341ff4547f0a92e43be48131f30408e15'

  url 'http://www.overlooksoft.com/packages/download?plat=osx'
  name 'Fing'
  homepage 'http://www.overlooksoft.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "overlook-fing-#{version}.pkg"

  uninstall :pkgutil => 'com.Overlook.Fing'
end
