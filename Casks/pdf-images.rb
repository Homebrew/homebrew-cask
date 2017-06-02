cask 'pdf-images' do
  version '1.1'
  sha256 '76092c2978d062e7e18d6ec538c259d2360307261c53d98512dfdca340c9e19a'

  url "https://downloads.sourceforge.net/pdf-images/PDF-Images-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/pdf-images/rss',
          checkpoint: '26dbfa3983fbd894600cc76235def155f9d5f9609abdfdff183b049a289ffc07'
  name 'PDF-Images'
  homepage 'https://sourceforge.net/projects/pdf-images/'

  depends_on macos: '>= :mountain_lion'

  app 'PDF-Images.app'
end
