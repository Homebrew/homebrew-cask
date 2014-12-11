cask :v1 => 'keyboardcleantool' do
  version :latest
  sha256 :no_check

  url 'http://bettertouchtool.net/KeyboardCleanTool.zip'
  homepage 'http://bettertouchtool.net'
  license :unknown    # todo: improve this machine-generated value

  app 'KeyboardCleanTool.app'
end
