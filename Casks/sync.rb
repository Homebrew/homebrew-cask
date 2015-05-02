cask :v1 => 'sync' do
  version :latest
  sha256 :no_check

  url 'https://www.sync.com/download/apple/Sync.dmg'
  name 'Sync'
  homepage 'https://www.sync.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Sync.app'
end
