cask :v1 => 'geekbench' do
  version '3.3.2'
  sha256 '17ccf365001cb25dd39d49c3b6a5fbaa3db056336819e6eeab75da96fed64f9a'

  url "http://cdn.primatelabs.com/Geekbench-#{version}-Mac.zip"
  appcast 'http://www.primatelabs.com/appcast/geekbench3.xml',
          :sha256 => 'c8f482bf12e4ec327801466c46bc937d913a6e3a4f8689f54001bed06681faee'
  name 'Geekbench'
  homepage 'http://www.primatelabs.com/geekbench/'
  license :commercial

  app 'Geekbench 3.app'
end
