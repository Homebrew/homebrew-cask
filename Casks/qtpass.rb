cask 'qtpass' do
  version '1.2.0'
  sha256 'b1b013e3eeab3634a8544e055295cf5ab985d2a1c08ac94c2b7487ab467b5489'

  # github.com/IJHack/qtpass was verified as official when first introduced to the cask
  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg"
  appcast 'https://github.com/IJHack/qtpass/releases.atom',
          checkpoint: '858fe6539b9c0757a5bae0b7323c98ecdbf23cd0c720740465a32e4537f9fa23'
  name 'QtPass'
  homepage 'https://qtpass.org/'

  app 'QtPass.app'
end
