cask 'netron' do
  version '1.2.1'
  sha256 '8abe5fbfe27ef11c7bfee1c4ea0eed514a074dc3bde2755ba51698cca7dd84cc'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: 'f8d696ce4dc0499f3d1a20890e535c808e34c036b15504f6dfe4f20ec403d50a'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
