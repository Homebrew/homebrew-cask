cask :v1 => 'sketch-tool' do
  version :latest
  sha256 :no_check

  url 'http://sketchtool.bohemiancoding.com/sketchtool-latest.zip'
  name 'SketchTool'
  homepage 'https://bohemiancoding.com/sketch/tool/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  binary 'sketchtool/bin/sketchtool'
  binary 'sketchtool/bin/sketchmigrate'
  artifact 'sketchtool/share/sketchtool/resources.bundle', :target => '/usr/local/share/sketchtool/resources.bundle'
end
