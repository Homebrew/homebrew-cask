cask 'easyfig' do
  version '2.2.2'
  sha256 'd9375b3a1246bb81aa59c53e4391b1ba76db66bf0a8e1028b533f2aac8b44134'

  # github.com/mjsull/Easyfig was verified as official when first introduced to the cask
  url "https://github.com/mjsull/Easyfig/releases/download/#{version}/Easyfig_#{version}_OSX.zip"
  appcast 'https://github.com/mjsull/Easyfig/releases.atom',
          checkpoint: '71dc2c415e2c51651c6c603cdda1f7a58bce89627072f68366651a33df0a9ba8'
  name 'EasyFig'
  homepage 'https://mjsull.github.io/Easyfig/'

  binary "Easyfig_#{version}_OSX/Easyfig", target: 'easyfig'
end
