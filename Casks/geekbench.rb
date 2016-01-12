cask 'geekbench' do
  version '3.3.2'
  sha256 '17ccf365001cb25dd39d49c3b6a5fbaa3db056336819e6eeab75da96fed64f9a'

  url "http://cdn.primatelabs.com/Geekbench-#{version}-Mac.zip"
  appcast 'http://www.primatelabs.com/appcast/geekbench3.xml',
          :sha256 => 'b4a7ee484f9bc99028247edd8d663d039469d784c8cb93fdc8b5955f45039413'
  name 'Geekbench'
  homepage 'http://www.primatelabs.com/geekbench/'
  license :commercial

  app 'Geekbench 3.app'
end
