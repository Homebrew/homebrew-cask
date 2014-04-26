class Golly < Cask
  if MacOS.version == :mavericks
    url 'http://downloads.sourceforge.net/project/golly/golly/golly-2.6/golly-2.6-mac109.zip'
    version '2.6'
    sha256 '360c1e279d89fc3a19bed9c75dfe5b1085a67672490f17fe38941cab3680b983'
    link 'golly-2.6-mac109/Golly.app'
    binary 'golly-2.6-mac109/bgolly'
  else
    url 'http://downloads.sourceforge.net/project/golly/golly/golly-2.6/golly-2.6-mac106.zip/'
    version '2.6'
    sha256 '6fee35e8e4f63ee2c1b0913b7e8009b2548c4e4469050f9c31791900e1e97f16'
    link 'golly-2.6-mac106/Golly.app'
    binary 'golly-2.6-mac106/bgolly'
  end
  homepage 'http://golly.sourceforge.net/'
  caveats do
    files_in_usr_local
  end
end
