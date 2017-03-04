cask 'anyipsum' do
  version '0.1.2'
  sha256 'cdc592a9d97d16cd3e48bc58fcac8471adf0c35d5470857e5b1cb97d65c6a844'

  url "https://github.com/jlowgren/AnyIpsum/releases/download/v#{version}/AnyIpsum.dmg"
  appcast 'https://github.com/jlowgren/AnyIpsum/releases.atom',
          checkpoint: '1ab7b72988f8466cd743095dfd62cf4f4232fc9d9a0cea33b960583989b5098a'
  name 'AnyIpsum'
  homepage 'https://github.com/jlowgren/AnyIpsum'

  app 'AnyIpsum.app'
end
