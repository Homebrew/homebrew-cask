cask 'steveschow-gfxcardstatus' do
  version '2.4.4i'
  sha256 '69c0d6602808cca60158a6d833eab8d82d59f683d3c25de34d977c83fe208dd0'

  url "https://github.com/steveschow/gfxCardStatus/releases/download/v#{version}/gfxCardStatus.app.zip"
  appcast 'https://github.com/steveschow/gfxCardStatus/releases.atom',
          checkpoint: '74b2f5f7a67db8d1b780184557a8fa4c981b86a7414bd7ea951e72034fbf249f'
  name 'gfxCardStatus'
  homepage 'https://github.com/steveschow/gfxCardStatus'

  app 'gfxCardStatus.app'
end
