cask 'cdock' do
  version '0.9.11'
  sha256 'da1657f0c92dac0b3d12c129f420b53471231da180d2ef2b6019ce5665f91b18'

  url "https://github.com/w0lfschild/cDock2/releases/download/v#{version}/cDock.zip"
  appcast 'https://github.com/w0lfschild/cDock2/releases.atom',
          :sha256 => '8b23380512d766d9773b145642876ab353987f2efe47efa2b42168ba7154aab3'
  name 'cDock2'
  name 'cDock'
  homepage 'https://w0lfschild.github.io/cdock'
  license :bsd

  depends_on :cask => 'easysimbl'
  depends_on :macos => '>= :mavericks'

  app 'cDock.app'

  caveats <<-EOS.undent
    #{token} will only run from within /Applications,
    and will request to be moved at launch.
  EOS
end
