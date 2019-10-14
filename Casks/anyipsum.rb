cask 'anyipsum' do
  version '0.5.0'
  sha256 '0d4af6420cdb7c2cf2b945e1d5978bfb7149d9c885da718b76f5ad6e81d4c3c6'

  url "https://github.com/jlowgren/AnyIpsum/releases/download/v#{version}/AnyIpsum.zip"
  appcast 'https://github.com/jlowgren/AnyIpsum/releases.atom'
  name 'AnyIpsum'
  homepage 'https://github.com/jlowgren/AnyIpsum'

  app 'AnyIpsum.app'
end
