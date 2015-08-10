cask :v1 => 'easyfig' do
  version '2.1.0'
  sha256 '470809860367a448cd931a2ed54caed116576f1cdf5795cba6ad1e8be186bec4'

  url "https://github.com/mjsull/Easyfig/releases/download/#{version}/Easyfig_mac_#{version.to_f}.tar.gz"
  appcast 'https://github.com/mjsull/Easyfig/releases.atom'
  name 'EasyFig'
  homepage 'http://mjsull.github.io/Easyfig/'
  license :gpl

  app "Easyfig_mac_#{version.to_f}/Easyfig_mac_#{version.to_f}.app"
end
