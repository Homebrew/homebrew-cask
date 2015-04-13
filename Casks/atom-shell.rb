cask :v1 => 'atom-shell' do
  version '0.21.2'
  sha256 '57071e7ac13fa9f8c6a533fab42f82dc1e51ce357aef64c26c7300ed73c7851b'

  url "https://github.com/atom/atom-shell/releases/download/v#{version}/atom-shell-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/atom-shell/releases.atom'
  name 'Atom Shell'
  homepage 'https://github.com/atom/atom-shell'
  license :mit

  stage_only true
end
