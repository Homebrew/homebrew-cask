cask 'easyfig' do
  version '2.2.2'
  sha256 'd9375b3a1246bb81aa59c53e4391b1ba76db66bf0a8e1028b533f2aac8b44134'

  # github.com/mjsull/Easyfig was verified as official when first introduced to the cask
  url "https://github.com/mjsull/Easyfig/releases/download/#{version}/Easyfig_#{version}_OSX.zip"
  appcast 'https://github.com/mjsull/Easyfig/releases.atom'
  name 'EasyFig'
  homepage 'https://mjsull.github.io/Easyfig/'

  binary "Easyfig_#{version}_OSX/Easyfig", target: 'easyfig'
end
