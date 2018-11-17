cask 'sabaki' do
  version '0.40.1'
  sha256 '03270df42da56f4c0aaa2236da758da6c3dcecdbf33b50eb1952a8c04cff2059'

  # github.com/SabakiHQ/Sabaki was verified as official when first introduced to the cask
  url "https://github.com/SabakiHQ/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  appcast 'https://github.com/SabakiHQ/Sabaki/releases.atom'
  name 'Sabaki'
  homepage 'https://sabaki.yichuanshen.de/'

  app 'Sabaki.app'
end
