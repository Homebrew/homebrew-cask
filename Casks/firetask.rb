cask :v1 => 'firetask' do
  version :latest
  sha256 :no_check

  url 'http://downloads.firetask.com/firetask-mac/Firetask-Mac.dmg'
  name 'FireTask'
  homepage 'http://firetask.com'
  license :closed

  app 'Firetask.app'
end
