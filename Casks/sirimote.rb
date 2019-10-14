cask 'sirimote' do
  version '1.3.6'
  sha256 'cb989843fd1798d3c41d6d4d512015ae984d3867e3892d98230cd5f684063f50'

  url 'https://eternalstorms.at/sirimote/SiriMote.zip'
  appcast 'https://eternalstorms.at/sirimote/updatefeed.xml'
  name 'SiriMote'
  homepage 'https://eternalstorms.at/sirimote'

  app 'SiriMote.app'
end
