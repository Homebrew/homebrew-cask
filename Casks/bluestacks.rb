cask :v1 => 'bluestacks' do
  version '0.9.30.423902'
  sha256 '261bf6978770a16d588abba51d6e550c6b44de6d12de9bf54a0c0a751290e547'

  url "http://cdn.bluestacks.com/downloads/#{version}/BlueStacks-Installer.dmg"
  name 'BlueStacks'
  homepage 'http://www.bluestacks.com/'
  license :closed

  app 'BlueStacks.app'
end
