cask 'shellhere' do
  version :latest
  sha256 :no_check

  url 'https://github.com/downloads/lhagan/ShellHere/ShellHere.dmg'
  name 'ShellHere'
  homepage 'https://github.com/lhagan/ShellHere'
  license :oss

  app 'ShellHere.app'
end
