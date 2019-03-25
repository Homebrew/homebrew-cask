cask 'macpar-deluxe' do
  version '5.1.1'
  sha256 '14799ac70f508d4a9fe65b8bdee6e4a9c3f227672d3804454c15e03bd0912249'

  url 'https://www.xs4all.nl/~gp/MacPAR_deLuxe/MacPARdeLuxe.dmg'
      user_agent: :fake
  appcast 'https://gp.home.xs4all.nl/Site/MacPAR_deLuxe.html'
  name 'MacPAR deLuxe'
  homepage 'https://gp.home.xs4all.nl/Site/MacPAR_deLuxe.html'

  app 'MacPAR deLuxe.app'
end
