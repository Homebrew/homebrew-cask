cask 'black-screen' do
  version '0.2.11'
  sha256 '28edbd0f5414fbdc231932534081a28ce50baf73ee44a522e11e94c43afb1b7b'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: 'b440476822f60a98c6bc00f679bad8b44dae2651b44c04b0bd9d53e1efabf62e'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'
  license :mit

  app 'Black Screen.app'
end
