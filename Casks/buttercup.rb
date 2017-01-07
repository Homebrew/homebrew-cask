cask 'buttercup' do
  version '0.6.1'
  sha256 :no_check

  # github.com/buttercup-pw/buttercup was verified as official when first introduced to the cask
  url "https://github.com/buttercup-pw/buttercup/releases/download/0.6.1-alpha/Buttercup-0.6.1-mac.zip"
  name 'Buttercup'
  homepage 'https://buttercup.pw'

  app 'Buttercup.app'
end
