cask :v1 => 'easyfig' do
  version '2.2.2'
  sha256 'd9375b3a1246bb81aa59c53e4391b1ba76db66bf0a8e1028b533f2aac8b44134'

  url "https://github.com/mjsull/Easyfig/releases/download/#{version}/Easyfig_#{version}_OSX.zip"
  appcast 'https://github.com/mjsull/Easyfig/releases.atom'
  name 'EasyFig'
  homepage 'http://mjsull.github.io/Easyfig/'
  license :gpl

  app "Easyfig_mac_#{version.to_f}/Easyfig_mac_#{version.to_f}.app"
end
