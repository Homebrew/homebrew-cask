cask :v1 => 'graphviz' do
  version '2.36.0'
  sha256 '6b84c663b29ac7b3e96de709f80159ffc060eeaea71a80c1b199f3dc1fe5a9e6'

  url "http://www.graphviz.org/pub/graphviz/stable/macos/mountainlion/graphviz-#{version}.pkg"
  homepage 'http://www.graphviz.org/'
  license :unknown

  pkg "graphviz-#{version}.pkg"
  uninstall :pkgutil => 'com.att.graphviz.*'
end
