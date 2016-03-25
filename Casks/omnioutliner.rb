cask 'omnioutliner' do
  version '4.4.1'
  sha256 'a1e801d9d1775cebda1f808847c1e249cf540973dc7a01b11c3859958d3b7466'

  url "http://downloads2.omnigroup.com/software/MacOSX/10.10/OmniOutliner-#{version}.dmg"
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'
  license :commercial

  app 'OmniOutliner.app'
end
