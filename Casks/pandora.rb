cask 'pandora' do
  version '2.0.10'
  sha256 'ca467e668cbb0584b85184ca9ef55ad8e1ddaaabdab157c8556ff8fb7168582b'

  url "https://www.pandora.com/static/desktop_app/pandora_#{version.dots_to_underscores}.air"
  name 'Pandora'
  homepage 'https://www.pandora.com/'

  depends_on cask: 'adobe-air'

  app 'Pandora.app'
end
