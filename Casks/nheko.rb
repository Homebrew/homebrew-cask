cask 'nheko' do
  version '0.5.2'
  sha256 '76eb8b542a224cfa989c995a08654d8e993324b770024f912d8983a2d3520c26'

  # bintray.com/mujx/matrix was verified as official when first introduced to the cask
  url "https://bintray.com/mujx/matrix/download_file?file_path=nheko%2Fv#{version}%2Fnheko-v#{version}.dmg"
  appcast 'https://github.com/mujx/nheko/releases.atom'
  name 'Nheko'
  homepage 'https://github.com/mujx/nheko'

  app 'Nheko.app'
end
