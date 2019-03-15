cask 'betterandbetter' do
  version :latest
  sha256 :no_check

  # github.com/suliveevil/homebrew-BetterAndBetter/releases/download/v1.6.28/BetterAndBetter.app.dmg was verified as official when first introduced to the cask
  url 'https://github.com/suliveevil/homebrew-BetterAndBetter/releases/download/v1.6.28/BetterAndBetter.app.dmg'
  name 'BetterAndBetter'
  name '越来越好'
  homepage 'http://better365.cn/'

  app 'BetterAndBetter.app'
end
