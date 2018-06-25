cask 'donut' do
  version '2.4.0'
  sha256 '03d46d2701cf340675cc57d1bd1b6c769ae67516fb33466d507142317f84bd10'

  # github.com/EtherbitHQ/donut was verified as official when first introduced to the cask
  url "https://github.com/EtherbitHQ/donut/releases/download/#{version}/donut-#{version}.dmg"
  appcast 'https://github.com/EtherbitHQ/donut/releases.atom'
  name 'donut'
  homepage 'https://www.etherbit.in/pages/donut'

  app 'donut.app'
end
