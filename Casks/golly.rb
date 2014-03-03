class Golly < Cask
  if MacOS.version == :mavericks
    url 'http://downloads.sourceforge.net/project/golly/golly/golly-2.6/golly-2.6-mac109.zip'
    version '2.6'
    sha1 'a579f353e33ceb74acc592fcf22dba997c682ecc'
    link 'golly-2.6-mac109/Golly.app'
    binary 'golly-2.6-mac109/bgolly'
  else
    url 'http://downloads.sourceforge.net/project/golly/golly/golly-2.6/golly-2.6-mac106.zip/'
    version '2.6'
    sha1 '42b90741d0c9c5eb5b816b4391cdcb767dee80fd'
    link 'golly-2.6-mac106/Golly.app'
    binary 'golly-2.6-mac106/bgolly'
  end
  homepage 'http://golly.sourceforge.net/'
  caveats do
    files_in_usr_local
  end
end
