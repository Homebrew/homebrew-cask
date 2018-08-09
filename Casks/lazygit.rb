cask 'lazygit' do
  version '0.1.48'
  sha256 '4ae722fcfca7e47c5eedc576cec1b38f7db99c418667c1b8429875e820ada2ea'

  url "https://github.com/jesseduffield/lazygit/releases/download/v#{version}/lazygit_#{version}_Darwin_x86_64.tar.gz"
  appcast 'https://github.com//jesseduffield/lazygit/releases.atom'
  name 'lazygit'
  homepage 'https://github.com/jesseduffield/lazygit'

  binary "#{staged_path}/lazygit"
end
