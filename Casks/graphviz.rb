cask 'graphviz' do
  if MacOS.release == :leopard
    version '2.28.0'
    sha256 'a2c96c9f1ec5cc59c042f53c1f26dae942a2216deda40ca606de3a10070e8a63'

    url "http://graphviz.org/pub/graphviz/stable/macos/leopard/graphviz-#{version}.pkg"
  elsif MacOS.release == :snow_leopard
    version '2.38.0'
    sha256 '23303b0f4b7243a0c6588442dd1c8c56e121d0587d13a7d99045b49b2a8bb23a'

    url "http://graphviz.org/pub/graphviz/stable/macos/snowleopard/graphviz-#{version}.pkg"
  elsif MacOS.release == :lion
    version '2.38.0'
    sha256 'a138b8d5c465ab51ff46114b6a36dd42f0b28ed5ec112901496ee8cf2f58b3ef'

    url "http://graphviz.org/pub/graphviz/stable/macos/lion/graphviz-#{version}.pkg"
  else
    version '2.36.0'
    sha256 '6b84c663b29ac7b3e96de709f80159ffc060eeaea71a80c1b199f3dc1fe5a9e6'

    url "http://graphviz.org/pub/graphviz/stable/macos/mountainlion/graphviz-#{version}.pkg"
  end

  name 'Graphviz'
  homepage 'http://www.graphviz.org/'
  license :eclipse

  depends_on macos: '>= :leopard'

  pkg "graphviz-#{version}.pkg"

  uninstall pkgutil: 'com.att.graphviz.*'
end
