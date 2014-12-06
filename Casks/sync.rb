cask :v1 => 'sync' do
  version :latest
  sha256 :no_check

  url 'https://www.sync.com/download/apple/Sync.dmg'
  homepage 'https://www.sync.com/'

  app 'Sync.app'
end
