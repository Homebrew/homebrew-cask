cask 'netron' do
  version '1.3.8'
  sha256 '86b085c445f4af5c8da7540ccf5affb7a8bc50f72ce7795c6357adf0d731607a'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '78b25282941c597c7d11d024cf3c6f06389428135457fca0df7466a8505ebecf'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
