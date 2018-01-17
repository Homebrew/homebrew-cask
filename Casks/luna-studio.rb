cask 'luna-studio' do
  version 'beta-1.0.1'
  sha256 '2f5fddb9c13b96230c67a4d2b77b880a8ed8e963d216da240a9b4aa10ffba6c1'

  url "http://packages.luna-lang.org/darwin/lunaInstaller.zip"
  name 'Luna Studio'
  homepage 'http://www.luna-lang.org/'

  installer manual: 'lunaInstaller.app'
end
