cask 'neovim' do
  version '0.3.7'
  sha256 '4ebbcaf2a35af08cf7e04760c69241d233d0b6890344905fa46f053120eae450'

  # github.com/neovim/neovim was verified as official when first introduced to the cask
  url "https://github.com/neovim/neovim/releases/download/v#{version}/nvim-macos.tar.gz"
  appcast 'https://github.com/neovim/neovim/releases.atom'
  name 'Neovim'
  homepage 'https://neovim.io/'

  binary 'nvim-osx64/bin/nvim'
end
