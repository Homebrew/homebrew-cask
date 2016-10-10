cask 'pdf-images' do
  version '1.1'
  sha256 '76092c2978d062e7e18d6ec538c259d2360307261c53d98512dfdca340c9e19a'

  url "https://downloads.sourceforge.net/pdf-images/PDF-Images-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/pdf-images/rss',
          checkpoint: 'a5203d844b1300bc54dd5a8a0089022f16897a6e906a7e89fc3805355f4d1718'
  name 'PDF-Images'
  homepage 'https://sourceforge.net/projects/pdf-images/'

  depends_on macos: '>= :mountain_lion'

  app 'PDF-Images.app'
end
