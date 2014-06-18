class SketchTool < Cask
  url 'http://sketchtool.bohemiancoding.com/sketchtool-latest.zip'
  homepage 'http://bohemiancoding.com/sketch/tool/'
  version 'latest'
  sha256 :no_check
  binary 'sketchtool/sketchtool'
  # Placing this bundle in the binary directory is contrary to Unix convention,
  # However the SketchTool README states:
  #   You can put the tool anywhere you like (eg /usr/local/bin), but the
  #   "sketchtool resources.bundle" file currently has to be in the same directory.
  binary 'sketchtool/sketchtool resources.bundle'
end
