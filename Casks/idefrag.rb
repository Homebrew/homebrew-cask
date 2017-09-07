cask 'idefrag' do
  if MacOS.version <= :el_capitan
    version '5.1.3'
    sha256 '4b695c04f491b8f9f60a1fb43836164960f7d95f82aaa38d1e3b7dd4eacd7d5c'
  else
    version '5.1.9'
    sha256 '494c0e0be7340cdfeff3015db96dfd9d541c861a814d8ba8ded990b8c30b684a'
  end

  url "https://coriolis-systems.com/downloads/iDefrag-#{version}.dmg"
  name 'iDefrag'
  homepage 'https://coriolis-systems.com/iDefrag/'

  depends_on macos: '>= :yosemite'

  app 'iDefrag.app'
end
