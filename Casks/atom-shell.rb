cask :v1 => 'atom-shell' do
  version '0.19.2'
  sha256 '800d4588b1946df517fc7effd4b1b1f430bd132ee64edc790d306a620be2d14a'

  url "https://github.com/atom/atom-shell/releases/download/v#{version}/atom-shell-v#{version}-darwin-x64.zip"
  homepage 'https://github.com/atom/atom-shell'
  license :mit

  stage_only true
end
