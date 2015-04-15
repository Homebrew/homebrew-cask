cask :v1 => 'atom-shell' do
  version '0.23.0'
  sha256 'fb85718ce22ec9a219e267e0f4d9ca640aba21a440a59c819f7b81977ab5376b'

  url "https://github.com/atom/atom-shell/releases/download/v#{version}/atom-shell-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/atom-shell/releases.atom'
  name 'Atom Shell'
  homepage 'https://github.com/atom/atom-shell'
  license :mit

  stage_only true
end
