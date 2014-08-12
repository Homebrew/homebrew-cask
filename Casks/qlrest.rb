class Qlrest < Cask
  version 'latest'
  sha256 :no_check

  url 'https://github.com/downloads/cluther/qlrest/QLRest.qlgenerator.zip'
  homepage 'https://github.com/cluther/qlrest'

  qlplugin 'QLRest.qlgenerator'
end
