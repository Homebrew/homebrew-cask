cask :v1 => 'golly' do
  version '2.6'

  if MacOS.version < :mavericks
    sha256 '6fee35e8e4f63ee2c1b0913b7e8009b2548c4e4469050f9c31791900e1e97f16'

    url "http://downloads.sourceforge.net/project/golly/golly/golly-#{version}/golly-#{version}-mac106.zip"

    app "golly-#{version}-mac106/Golly.app"
    binary "golly-#{version}-mac106/bgolly"
  else
    sha256 '360c1e279d89fc3a19bed9c75dfe5b1085a67672490f17fe38941cab3680b983'

    url "http://downloads.sourceforge.net/project/golly/golly/golly-#{version}/golly-#{version}-mac109.zip"

    app "golly-#{version}-mac109/Golly.app"
    binary "golly-#{version}-mac109/bgolly"
  end

  homepage 'http://golly.sourceforge.net/'
  license :oss

  caveats do
    files_in_usr_local
  end
end
