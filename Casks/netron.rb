cask 'netron' do
  version '1.7.9'
  sha256 'b9c3335ed04840f8905a71bb7379c6f6c2d5ef64d4a8f3e55f76f154361de962'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: 'dc2b752f37475a7a2551b7879f6d5c36cb0423c990cdc021c3c046fc92579212'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
