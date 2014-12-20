cask :v1 => 'keyboardcleantool' do
  version :latest
  sha256 :no_check

  url 'http://bettertouchtool.net/KeyboardCleanTool.zip'
  homepage 'http://bettertouchtool.net'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'KeyboardCleanTool.app'
end
