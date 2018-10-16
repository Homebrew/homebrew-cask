cask 'neovim' do
  version '0.3.1'
  sha256 'b67a09a3ffac8655a5db1a14f7173790f49b7f5782e23310f1c3bccda313e2b1'

  # github.com/neovim/neovim was verified as official when first introduced to the cask
  url "https://github.com/neovim/neovim/releases/download/v#{version}/nvim-macos.tar.gz"
  appcast 'https://github.com/neovim/neovim/releases.atom'
  name 'neovim'
  homepage 'https://neovim.io/'

  binary './nvim-osx64/bin/nvim'
end
