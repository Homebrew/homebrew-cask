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
    sha256 'e97f429065fe9249801b4d04d8e9ed2e354b396e5b107d5d9da25501368a398a'
    link 'golly-2.6-mac106/Golly.app'
    binary 'golly-2.6-mac106/bgolly'
  end
  homepage 'http://golly.sourceforge.net/'
  caveats do
    files_in_usr_local
  end
end
