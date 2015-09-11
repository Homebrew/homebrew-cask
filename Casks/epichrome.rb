cask :v1 => 'epichrome' do
  version '2.1.5'
  sha256 'c22bfce8afba80a7ca7ed4c0d24ac1cba173807215a9ce1d3db0b6ac396a3737'

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.dmg"
  appcast 'https://github.com/dmarmor/epichrome/releases.atom'
  name 'Epichrome'
  homepage 'https://github.com/dmarmor/epichrome'
  license :gpl

  app 'Epichrome.app'
end
