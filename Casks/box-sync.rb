cask :v1 => 'box-sync' do
  version :latest
  sha256 :no_check

  url 'https://box.com/sync4mac'
  homepage 'https://sites.box.com/sync4/'
  license :gratis

  app 'Box Sync.app'
end
