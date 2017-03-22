cask 'idefrag' do
  if MacOS.version <= :el_capitan
    version '5.1.3'
    sha256 '4b695c04f491b8f9f60a1fb43836164960f7d95f82aaa38d1e3b7dd4eacd7d5c'
  else
    version '5.1.5'
    sha256 'fef5403743b383cabacdb0636eb61f7d61f752a0a16592853a95bd100c1bf2ff'
  end

  url "https://coriolis-systems.com/downloads/iDefrag-#{version}.dmg"
  name 'iDefrag'
  homepage 'https://coriolis-systems.com/iDefrag/'

  depends_on macos: '>= :yosemite'

  app 'iDefrag.app'
end
