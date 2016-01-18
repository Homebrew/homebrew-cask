cask 'sketch-tool' do
  version :latest
  sha256 :no_check

  url 'http://sketchtool.bohemiancoding.com/sketchtool-latest.zip'
  name 'SketchTool'
  homepage 'https://bohemiancoding.com/sketch/tool/'
  license :gratis

  binary 'sketchtool/bin/sketchtool'
  binary 'sketchtool/bin/sketchmigrate'
  artifact 'sketchtool/share/sketchtool/resources.bundle', target: '/usr/local/share/sketchtool/resources.bundle'
end
