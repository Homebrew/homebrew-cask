cask 'sabaki' do
  version '0.21.0'
  sha256 'e464ccb75867ca920b842a254231042489d9650a04cc782e2955b5ced4b086ea'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/yishn/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  name 'Sabaki'
  homepage 'http://sabaki.yichuanshen.de/'

  depends_on formula: 'unrar'

  license :mit

  app 'Sabaki.app'
end
