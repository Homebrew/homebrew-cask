cask 'byteball' do
  version '1.9.3'
  sha256 :no_check

  # github.com/byteball/byteball was verified as official when first introduced to the cask
  url "https://github.com/byteball/byteball/releases/download/v#{version}/Byteball-osx64.dmg"
  name 'Byteball'
  homepage 'https://byteball.org/'

  app 'byteball.app'
end
