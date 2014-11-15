cask :v1 => 'cutesdr' do
  version '1.14'
  sha256 'acac69ffe1fd36231d7c1948019fed4ff1eda59e8bfc88bd75797b875238a8ae'

  url "https://downloads.sourceforge.net/project/cutesdr/CuteSdr#{version.gsub('.','')}.dmg"
  homepage 'http://sourceforge.net/projects/cutesdr'
  license :oss

  app 'cutesdr.app'
end
