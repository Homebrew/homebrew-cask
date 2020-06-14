cask 'kui' do
  version '8.9.2'
  sha256 '8cbd63aa7f680e11364213890e0ff2c809da422457bcb45299761a17e70c6efe'

  # github.com/IBM/kui was verified as official when first introduced to the cask
  url "https://github.com/IBM/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2"
  appcast 'https://github.com/IBM/kui/releases.atom'
  name 'Kui'
  homepage 'https://kui.tools/'

  app 'Kui-darwin-x64/Kui.app'
end
