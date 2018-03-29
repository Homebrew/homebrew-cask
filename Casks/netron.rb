cask 'netron' do
  version '1.7.0'
  sha256 '0b2f1c5859245c3c1b1013fb84a39130281fc17df91f1a36d673a992205746c9'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '0f5ac5805172b3c54e8dff091f1ab37c55a3de39adc66f444fb511f8f5fc100a'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
