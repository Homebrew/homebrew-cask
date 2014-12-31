cask :v1 => 'atom-shell' do
  version '0.19.5'
  sha256 '9cef09ebbb26f8137ea7548316f002d0ef6086fc3d14b76896ebd9a62f58acc5'

  url "https://github.com/atom/atom-shell/releases/download/v#{version}/atom-shell-v#{version}-darwin-x64.zip"
  homepage 'https://github.com/atom/atom-shell'
  license :mit

  stage_only true
end
