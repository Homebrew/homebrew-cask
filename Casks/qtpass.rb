cask 'qtpass' do
  version '1.1.5'
  sha256 'a8f35ff258a520795c9079dda837d3b1cbbdcd8528cec2ddae68573504f4883f'

  # github.com/IJHack/qtpass was verified as official when first introduced to the cask
  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg"
  appcast 'https://github.com/IJHack/qtpass/releases.atom',
          checkpoint: 'e2efc86af57d6fcda7802285b02ab279ee97e106d1aa9539f5f4aec0c317e319'
  name 'QtPass'
  homepage 'https://qtpass.org/'

  app 'QtPass.app'
end
