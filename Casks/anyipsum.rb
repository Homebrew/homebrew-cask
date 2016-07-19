cask 'anyipsum' do
  version '0.1.2'
  sha256 'cdc592a9d97d16cd3e48bc58fcac8471adf0c35d5470857e5b1cb97d65c6a844'

  url "https://github.com/jlowgren/AnyIpsum/releases/download/v#{version}/AnyIpsum.dmg"
  appcast 'https://github.com/jlowgren/AnyIpsum/releases.atom',
          checkpoint: 'ff2f85e9769d1152f8477de1eac54acf25991b1d7004959c37d7e2967ba7e9ed'
  name 'AnyIpsum'
  homepage 'https://github.com/jlowgren/AnyIpsum'
  license :mit

  app 'AnyIpsum.app'
end
