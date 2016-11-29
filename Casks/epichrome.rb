cask 'epichrome' do
  version '2.1.16'
  sha256 '244b3e77aef4d8c772753515917c508c7f46e2ddd01531a04def11e259727eae'

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.dmg"
  appcast 'https://github.com/dmarmor/epichrome/releases.atom',
          checkpoint: '7d06767fb9e238d2413fac857456c8d530423b6149f2f901abe2b2d2813a2866'
  name 'Epichrome'
  homepage 'https://github.com/dmarmor/epichrome'

  app 'Epichrome.app'
end
