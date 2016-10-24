cask 'droplr' do
  version '4.6.4'
  sha256 '41064cec1922fa76b15e940a747e3d12e720588fa3ab9a527b38ba3a683c531b'

  url 'https://s3.amazonaws.com/files.droplr.com/apps/mac/Droplr+91.zip'
  name 'Droplr'
  homepage 'https://droplr.com/'

  auto_updates true

  app 'Droplr.app'

  uninstall login_item: 'Droplr'
end
