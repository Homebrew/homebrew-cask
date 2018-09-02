cask 'nheko' do
  version '0.5.5'
  sha256 '38227fda82b59e743437af887eb59081505bf612003065fbd5c807b6a3fefaca'

  # bintray.com/mujx/matrix was verified as official when first introduced to the cask
  url "https://bintray.com/mujx/matrix/download_file?file_path=nheko%2Fv#{version}%2Fnheko-v#{version}.dmg"
  appcast 'https://github.com/mujx/nheko/releases.atom'
  name 'Nheko'
  homepage 'https://github.com/mujx/nheko'

  app 'Nheko.app'
end
