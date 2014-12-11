cask :v1 => 'matplotlib' do
  version '1.3.1-2'
  sha256 'e90bef08b03c2526b85b669705fdc6b1ba95099e7524fdc52a79ab2081466b2d'

  url "http://www.kyngchaos.com/files/software/python/matplotlib-#{version}.dmg"
  homepage 'http://www.kyngchaos.com/software/python'
  license :unknown    # todo: improve this machine-generated value

  pkg 'matplotlib.pkg'

  uninstall :pkgutil => 'com.kyngchaos.matplotib-lion'
end
