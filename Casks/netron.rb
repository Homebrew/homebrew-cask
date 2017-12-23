cask 'netron' do
  version '1.1.6'
  sha256 'c18878c45b05b31e8d235f3165a888745d69ecda31e06a37c50a6b54a077eb33'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '66f4bd826c1f84f222fec875c8050bb55ccd035cc488ae8cc79d9292c60c5b8b'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
