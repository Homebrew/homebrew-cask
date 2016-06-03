cask 'pdf-images' do
  version '1.1'
  sha256 '76092c2978d062e7e18d6ec538c259d2360307261c53d98512dfdca340c9e19a'

  url "http://downloads.sourceforge.net/sourceforge/pdf-images/PDF-Images-#{version}.dmg"
  name 'PDF-Images'
  homepage 'https://sourceforge.net/projects/pdf-images/'
  license :oss

  depends_on macos: '>= :mountain_lion'

  app 'PDF-Images.app'
end
