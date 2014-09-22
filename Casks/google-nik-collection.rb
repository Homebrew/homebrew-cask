class GoogleNikCollection < Cask
  version :latest
  sha256 :no_check

  url 'http://dl.google.com/dl/edgedl/photos/nikcollection-latest.dmg'
  homepage 'https://www.google.com/nikcollection/'

  app 'Nik Collection.app', :target => 'Install Nik Collection.app'

  caveats do
    manual_installer('Install Nik Collection.app')
  end
end
