class Jsonlook < Cask
  version :latest
  sha256 :no_check

  url 'https://dl.dropbox.com/u/3878216/github/jsonlook.qlgenerator.zip'
  homepage 'https://github.com/rjregenold/jsonlook'
  license :oss

  qlplugin 'jsonlook.qlgenerator'
end
