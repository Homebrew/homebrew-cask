cask 'pagico' do
  version '8.8.2225'
  sha256 'f1f73bb56293e21514c7973bec6f519bdaaf9cf0d36986daa4ba26e1bb81778e'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
