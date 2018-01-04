cask 'qtpass' do
  version '1.2.1'
  sha256 '9da6c00fcc57087c00079a89f225a48b008b0fba1f9f50c0ea67261d3f7de58b'

  # github.com/IJHack/qtpass was verified as official when first introduced to the cask
  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg"
  appcast 'https://github.com/IJHack/qtpass/releases.atom',
          checkpoint: '4469441746cad35ff53aa44c10d7b60bcab34d487ee8c054c64a469a0f7e28bd'
  name 'QtPass'
  homepage 'https://qtpass.org/'

  app 'QtPass.app'
end
