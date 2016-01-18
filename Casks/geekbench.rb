cask 'geekbench' do
  version '3.3.2'
  sha256 '17ccf365001cb25dd39d49c3b6a5fbaa3db056336819e6eeab75da96fed64f9a'

  url "http://cdn.primatelabs.com/Geekbench-#{version}-Mac.zip"
  appcast 'http://www.primatelabs.com/appcast/geekbench3.xml',
          checkpoint: '584e688b7c3b295d704606385636a39c83078ba00e9b5fd7330eaa7bb81577cb'
  name 'Geekbench'
  homepage 'http://www.primatelabs.com/geekbench/'
  license :commercial

  app 'Geekbench 3.app'
end
