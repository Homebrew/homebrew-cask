cask 'netron' do
  version '1.2.9'
  sha256 'db4aa40f18f88bf6a574b4351ffd76fffb8f07cf742fa01f9cc557eb2f2b3f18'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: 'd67a69a1bea5ce15d9ac15f72da6212fc9b24a23b38843ec2140a493a3c84304'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
