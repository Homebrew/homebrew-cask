cask 'idefrag' do
  if MacOS.version <= :el_capitan
    version '5.1.3'
    sha256 '4b695c04f491b8f9f60a1fb43836164960f7d95f82aaa38d1e3b7dd4eacd7d5c'
  else
    version '5.1.8'
    sha256 '2e072ee9a7e3469bbb93b749ae01cc562a0b404dc46daa349edeeaeaede03ecc'
  end

  url "https://coriolis-systems.com/downloads/iDefrag-#{version}.dmg"
  name 'iDefrag'
  homepage 'https://coriolis-systems.com/iDefrag/'

  depends_on macos: '>= :yosemite'

  app 'iDefrag.app'
end
