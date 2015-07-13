cask :v1 => 'cdock' do
  version '8.2'
  sha256 '4695a982d1252c40f7e786a7bc850bae592d08d07d884b6938f2c8c5263fe69b'

  url "http://downloads.sourceforge.net/project/cdock/cDock/cDock_v#{version}.zip"
  name 'cDock'
  homepage 'http://sourceforge.net/projects/cdock/'
  license :oss

  app 'cDock.app'

  caveats <<-EOS.undent
    #{token} will only run from within /Applications,
    and will request to be moved at launch.
  EOS

  depends_on :cask => 'easysimbl'
  depends_on :macos => '>= :mavericks'
end
