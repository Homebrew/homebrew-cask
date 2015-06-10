cask :v1 => 'geekbench' do
  version '3.3.2'
  sha256 '17ccf365001cb25dd39d49c3b6a5fbaa3db056336819e6eeab75da96fed64f9a'

  url "http://cdn.primatelabs.com/Geekbench-#{version}-Mac.zip"
  appcast 'http://www.primatelabs.com/appcast/geekbench3.xml',
          :sha256 => 'e16473af8653e0c163f02ad054e9e6b7b3c5e99c4768da123d8e21c8f8ffeeaf'
  name 'Geekbench'
  homepage 'http://www.primatelabs.com/geekbench/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Geekbench 3.app'
end
