cask :v1 => 'golly' do
  if MacOS.release <= :mountain_lion
    version '2.6'
    sha256 '6fee35e8e4f63ee2c1b0913b7e8009b2548c4e4469050f9c31791900e1e97f16'

    url "http://downloads.sourceforge.net/project/golly/golly/golly-#{version}/golly-#{version}-mac106.zip"

    app "golly-#{version}-mac106/Golly.app"
    binary "golly-#{version}-mac106/bgolly"
  else
    version '2.7b3'
    sha256 '6b77df5a8dccf6963edc78071e173297f13acb08dcdea3f3d1b9a3290be19dfc'

    url "http://downloads.sourceforge.net/project/golly/golly/golly-#{version}/golly-#{version}-mac109.zip"

    app "golly-#{version}-mac109/Golly.app"
    binary "golly-#{version}-mac109/bgolly"
  end

  name 'Golly'
  homepage 'http://golly.sourceforge.net/'
  license :gpl

  caveats do
    files_in_usr_local
  end
end
