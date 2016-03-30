cask 'macpar-deluxe' do
  version :latest
  sha256 :no_check

  url 'http://www.xs4all.nl/~gp/MacPAR_deLuxe/MacPARdeLuxe.dmg'
  name 'MacPAR deLuxe'
  homepage 'http://gp.home.xs4all.nl/Site/MacPAR_deLuxe.html'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MacPAR deLuxe.app'
end
