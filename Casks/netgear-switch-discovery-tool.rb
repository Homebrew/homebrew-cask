cask 'netgear-switch-discovery-tool' do
  version '1.1.115'
  sha256 'e2988b8ebb58e8953885a46c4f9e94ba6ebebfc34b93cc902fbc44540d798bf8'

  url "https://www.downloads.netgear.com/files/GDC/NetgearSDT-V#{version}.zip"
  name 'netgear-switch-discovery-tool'
  homepage 'https://www.netgear.com/support/download/'

  container nested: "NetgearSDT-V#{version}/NetgearSDT-V#{version}.dmg"

  app 'NETGEAR Switch Discovery Tool.app'
end
