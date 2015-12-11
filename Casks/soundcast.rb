cask :v1 => 'soundcast' do
  version :latest
  sha256 :no_check

  # dropboxusercontent.com is the official download host per the vendor homepage
  url 'https://dl.dropboxusercontent.com/u/6618408/soundcast.zip'
  name 'Soundcast'
  homepage 'https://github.com/andresgottlieb/soundcast'
  license :mit

  depends_on :cask => 'soundflower'

  app 'soundcast.app'
end
