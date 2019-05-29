cask 'sirimote' do
  version '1.3.0'
  sha256 '76b37c23006847d763fde28fcc2ac0499eff4a18ed9dcda8508d4acfc4e25ac3'

  url 'https://eternalstorms.at/sirimote/SiriMote.zip'
  appcast 'https://eternalstorms.at/sirimote/updatefeed.xml'
  name 'SiriMote'
  homepage 'https://eternalstorms.at/sirimote'

  app 'SiriMote.app'
end
