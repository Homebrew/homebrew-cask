cask 'sirimote' do
  version '1.3.7'
  sha256 '1a4c7fbf5476215278a26dedfdec6a81860fbf5ec53c157f2cf0466a645d8d35'

  url 'https://eternalstorms.at/sirimote/SiriMote.zip'
  appcast 'https://eternalstorms.at/sirimote/updatefeed.xml'
  name 'SiriMote'
  homepage 'https://eternalstorms.at/sirimote'

  app 'SiriMote.app'
end
