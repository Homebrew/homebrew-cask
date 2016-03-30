cask 'macswear' do
  version '1.0'
  sha256 'a113fa7a73adac2bb153d49d6d7d1ba15ac1ae5ca78a8d24861900b8664bdd52'

  url "https://wakaba.c3.cx/releases/Swear/MacSwear#{version}.zip"
  name 'MacSwear'
  homepage 'https://wakaba.c3.cx/s/games/macswear'
  license :public_domain

  app 'MacSwear.app'
end
