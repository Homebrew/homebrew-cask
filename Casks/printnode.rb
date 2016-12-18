cask 'printnode' do
  version '4.10.1,2e8'
  sha256 'cf762200b9a8bb842aa9842a20f392d33b7f76d73286f06ff4859a2cdd185431'

  url "https://app.printnode.com/bundles/printnodemain/downloads/printnode/#{version.major_minor}.0/PrintNode-#{version.tr(',', '+')}.dmg"
  name 'PrintNode'
  homepage 'https://www.printnode.com/'

  depends_on macos: '>= :mountain_lion'

  app 'PrintNode.app'
end
