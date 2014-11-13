cask :v1 => 'jsonlook' do
  version :latest
  sha256 :no_check

  # dropbox is the official download host per the vendor homepage
  url 'https://dl.dropbox.com/u/3878216/github/jsonlook.qlgenerator.zip'
  homepage 'https://github.com/rjregenold/jsonlook'
  license :oss

  qlplugin 'jsonlook.qlgenerator'
end
