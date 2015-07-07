cask :v1 => 'cdock' do
  version '7.4'
  sha256 '1409c8b3ccd0c15496aee8b98ff3b8544d24fa38227c889214d2075fffdcf67a'

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
end
