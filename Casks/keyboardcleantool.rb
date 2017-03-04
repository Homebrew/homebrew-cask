cask 'keyboardcleantool' do
  version :latest
  sha256 :no_check

  # download.bettertouchtool.net was verified as official when first introduced to the cask
  url 'https://download.bettertouchtool.net/KeyboardCleanTool.zip'
  name 'KeyboardCleanTool'
  homepage 'https://www.boastr.net/downloads/'

  app 'KeyboardCleanTool.app'
end
