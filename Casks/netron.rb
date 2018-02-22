cask 'netron' do
  version '1.5.3'
  sha256 '8b752eaf2dab6519209df8d49d95d93184c1eea19d4d38807f4bf1f33e56c617'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '027a4cc27d216d715d901b3b1baf15044b1353f35b764e55ee04f96ae9ae3b0a'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
