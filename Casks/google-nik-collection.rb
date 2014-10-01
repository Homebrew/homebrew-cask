class GoogleNikCollection < Cask
  version :latest
  sha256 :no_check

  url 'http://dl.google.com/dl/edgedl/photos/nikcollection-latest.dmg'
  homepage 'https://www.google.com/nikcollection/'
  license :unknown

  caveats do
    manual_installer 'Nik Collection.app'
  end
end
