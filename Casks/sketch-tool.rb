cask :v1 => 'sketch-tool' do
  version :latest
  sha256 :no_check

  url 'http://sketchtool.bohemiancoding.com/sketchtool-latest.zip'
  homepage 'http://bohemiancoding.com/sketch/tool/'
  license :unknown

  binary 'sketchtool/bin/sketchtool'
  binary 'sketchtool/bin/sketchmigrate'
  artifact 'sketchtool/share/sketchtool/resources.bundle', :target => '/usr/local/share/sketchtool/resources.bundle'
end
