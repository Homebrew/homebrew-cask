cask :v1 => 'double-commander' do
  version '0.5.8'
  sha256 'a4bf455f028783a4c14d600068d27556984bfc3357a80dc0715f047efbf6dbfe'

  url "https://downloads.sourceforge.net/sourceforge/doublecmd/doublecmd-#{version}-5390.qt.x86_64.dmg"
  homepage 'http://doublecmd.sourceforge.net/'
  license :oss

  app 'Double Commander.app'
end
