cask 'rrootage' do
  version :latest
  sha256 :no_check

  url 'https://workram.com/downloads/rRootage-for-OS-X-0.23.7.dmg', referer: 'https://workram.com/games/rrootage'
  name 'rRootage'
  homepage 'https://workram.com/games/rrootage/'
  license :bsd

  app 'rRootage.app'
end
