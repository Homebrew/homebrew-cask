cask :v1 => 'powerkey' do
  version '1.3'
  sha256 '5f6246133953a65709252880738de7f69198ed3f23dc61bbfc062887e2313102'

  url "https://github.com/pkamb/PowerKey/releases/download/v#{version}/PowerKey#{version}.zip"
  appcast 'https://github.com/pkamb/PowerKey/releases.atom'
  name 'PowerKey'
  homepage 'https://pkamb.github.io/PowerKey/'
  license :mit

  app 'PowerKey.app'
end
