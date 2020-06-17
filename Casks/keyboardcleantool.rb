cask 'keyboardcleantool' do
  version :latest
  sha256 :no_check

  # formerly boastr.net, then bettertouchtool.net - now folivora.ai
  url 'https://folivora.ai/releases/KeyboardCleanTool.zip'
  name 'KeyboardCleanTool'
  homepage 'https://folivora.ai/keyboardcleantool'

  app 'KeyboardCleanTool.app'
end
