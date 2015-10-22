cask :v1 => 'keyboardcleantool' do
  version :latest
  sha256 :no_check

  # bettertouchtool.net is the official download host per the vendor homepage
  url 'http://bettertouchtool.net/KeyboardCleanTool.zip'
  name 'KeyboardCleanTool'
  homepage 'http://blog.boastr.net/keyboardcleantool/'
  license :gratis

  app 'KeyboardCleanTool.app'
end
