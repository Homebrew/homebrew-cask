cask :v1 => 'epub-to-pdf' do
  version '3.1'
  sha256 'dcfc59d57f756802e844614b7dae43bca67284ec85fe6b909f244e41f20987b3'

  url "http://epub-2-pdf.googlecode.com/files/e2p-#{version.to_i}.dmg"
  appcast 'https://code.google.com/feeds/p/epub-2-pdf/downloads/basic',
          :sha256 => '229b6653b24597a90cf5c48f1fca8de73892d6342c7800e84c9d828e976dfe24',
          :format => :unknown
  homepage 'https://code.google.com/p/epub-2-pdf'
  license :oss

  app 'epub-to-pdf.app'
end
