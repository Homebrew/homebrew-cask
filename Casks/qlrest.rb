class Qlrest < Cask
  url 'https://github.com/downloads/cluther/qlrest/QLRest.qlgenerator.zip'
  homepage 'https://github.com/cluther/qlrest'
  version 'latest'
  sha256 :no_check
  qlplugin 'QLRest.qlgenerator'
end
