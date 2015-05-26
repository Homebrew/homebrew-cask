cask :v1 => 'stretchlink' do
  version :latest
  sha256 :no_check

  url 'http://stretchlinkapp.com/download/StretchLink.zip'
  name 'StretchLink'
  homepage 'http://stretchlinkapp.com/'
  license :commercial

  app 'StretchLink.app'
end
