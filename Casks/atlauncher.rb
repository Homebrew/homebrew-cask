cask 'atlauncher' do
  version :latest
  sha256 :no_check

  url 'https://www.atlauncher.com/download/zip'
  name 'ATLauncher'
  homepage 'https://www.atlauncher.com/'
  license :gpl

  app 'ATLauncher.app'
end
