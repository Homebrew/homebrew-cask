cask 'fontplop' do
  version '1.3.0'
  sha256 '0ada8c9040bb3da489965b917990f6d88da23c8fec5602f798c91db7e2aafb0e'

  # github.com/matthewgonzalez/fontplop was verified as official when first introduced to the cask
  url "https://github.com/matthewgonzalez/fontplop/releases/download/v#{version}/fontplop-#{version}.dmg"
  appcast 'https://github.com/matthewgonzalez/fontplop/releases.atom',
          checkpoint: '7b9ac9820050a5079b096960e60203fe63c3e2a46cd610a0847c4e42fe224794'
  name 'Fontplop'
  homepage 'http://www.fontplop.com/'

  app 'fontplop.app'
end
