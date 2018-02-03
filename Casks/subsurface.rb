cask 'subsurface' do
  version '4.7.6'
  sha256 '8d91405ccbe59387e13e4986d28801d3bc82097e3d6f52a680defc2e7c29ef5e'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org/'

  app 'Subsurface.app'
end
