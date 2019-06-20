cask 'netshade' do
  version '8.0.1'
  sha256 '0c0c680e1084219110f16e2782f0641ffe7c84a7d42bc797aee8ecb03873bad2'

  url "https://secure.raynersw.com/downloads/NetShade-#{version.dots_to_hyphens}.app.zip"
  appcast 'https://www.raynersw.com/appcast.php'
  name 'NetShade'
  homepage 'https://secure.raynersw.com/netshade.php'

  app 'NetShade.app'
end
