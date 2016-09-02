cask 'fork' do
  version :latest
  sha256 :no_check

  url 'https://git-fork.com/update/files/Fork.dmg'
  name 'Fork'
  homepage 'https://git-fork.com'
  license :closed

  app 'Fork.app'
end
