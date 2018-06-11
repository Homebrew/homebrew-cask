cask 'dbeaver-enterprise' do
  version '5.1.0'
  sha256 'e1113ada15d326d3a68bf28c2a7c6dacdb6e2cdf52ed369ce5b5bbd9b5f4066b'

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'https://dbeaver.com/product/version.xml',
          checkpoint: '9f1c3d2697fd8dad4f85f8443124073e9088f4c58db027c23fe79f0b53f9066b'
  name 'DBeaver Enterprise Edition'
  homepage 'https://dbeaver.com/'

  app 'DBeaverEE.app'

  caveats do
    depends_on_java '8+'
  end
end
