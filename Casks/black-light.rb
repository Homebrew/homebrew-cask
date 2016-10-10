cask 'black-light' do
  version '2.1'
  sha256 '008861531d4d52b3b0721095f7c6edf50d2b0a3232e2d045360f474ca7841834'

  url "https://littoral.michelf.ca/apps/black-light/black-light-#{version}.zip"
  name 'Black Light'
  homepage 'https://michelf.ca/projects/black-light'

  app 'Black Light.app'
end
