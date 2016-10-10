cask 'keyboardcleantool' do
  version :latest
  sha256 :no_check

  # bettertouchtool.net was verified as official when first introduced to the cask
  url 'https://bettertouchtool.net/KeyboardCleanTool.zip'
  name 'KeyboardCleanTool'
  homepage 'https://blog.boastr.net/keyboardcleantool/'

  app 'KeyboardCleanTool.app'
end
