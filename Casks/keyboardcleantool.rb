cask 'keyboardcleantool' do
  version :latest
  sha256 :no_check

  # bettertouchtool.net/releases was verified as official when first introduced to the cask
  url 'https://bettertouchtool.net/releases/KeyboardCleanTool.zip'
  name 'KeyboardCleanTool'
  homepage 'https://www.boastr.net/downloads/'

  app 'KeyboardCleanTool.app'
end
