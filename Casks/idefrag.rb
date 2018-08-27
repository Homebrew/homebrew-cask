cask 'idefrag' do
  if MacOS.version <= :el_capitan
    version '5.1.3'
    sha256 '4b695c04f491b8f9f60a1fb43836164960f7d95f82aaa38d1e3b7dd4eacd7d5c'
  else
    version '5.3.0'
    sha256 'e7004d8399779629da2b628703876383d7ef641026cab23d5afa58cb81460ca6'
  end

  url "https://coriolis-systems.com/downloads/iDefrag-#{version}.dmg"
  name 'iDefrag'
  homepage 'https://coriolis-systems.com/iDefrag/'

  depends_on macos: '>= :yosemite'

  app 'iDefrag.app'
end
