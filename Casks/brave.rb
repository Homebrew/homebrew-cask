cask 'brave' do
  version '0.9.3dev'
  sha256 '0fdadf06846735b3b2fb88d1dcc912776f18b35bfffa08338058bc80bc9a685a'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'da5e84909ee826dde6f6c29342e4708b8402ffe2f069aaeeb5a0fe4d7b1e9bbd'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'
end
