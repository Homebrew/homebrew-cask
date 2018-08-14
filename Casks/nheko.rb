cask 'nheko' do
  version '0.5.3'
  sha256 '814423164cbe9d765c84e2c9ec80cb4929960f0e8880c05b4ab54ff502cf1a5d'

  # bintray.com/mujx/matrix was verified as official when first introduced to the cask
  url "https://bintray.com/mujx/matrix/download_file?file_path=nheko%2Fv#{version}%2Fnheko-v#{version}.dmg"
  appcast 'https://github.com/mujx/nheko/releases.atom'
  name 'Nheko'
  homepage 'https://github.com/mujx/nheko'

  app 'Nheko.app'
end
