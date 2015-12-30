cask 'easyfig' do
  version '2.2.2'
  sha256 'd9375b3a1246bb81aa59c53e4391b1ba76db66bf0a8e1028b533f2aac8b44134'

  url "https://github.com/mjsull/Easyfig/releases/download/#{version}/Easyfig_#{version}_OSX.zip"
  appcast 'https://github.com/mjsull/Easyfig/releases.atom',
          :sha256 => 'd05167d251fddaee8dd7a88aa792f8375495e6643bde0d03be2754b5300971d8'
  name 'EasyFig'
  homepage 'https://mjsull.github.io/Easyfig/'
  license :gpl

  binary "Easyfig_#{version}_OSX/Easyfig", :target => 'easyfig'
end
