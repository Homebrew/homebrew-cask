cask 'nheko' do
  version '0.5.4'
  sha256 'e19ad955bc73145bba70069867e80d3e02f71957b66131bc844eaf9e74435b1f'

  # bintray.com/mujx/matrix was verified as official when first introduced to the cask
  url "https://bintray.com/mujx/matrix/download_file?file_path=nheko%2Fv#{version}%2Fnheko-v#{version}.dmg"
  appcast 'https://github.com/mujx/nheko/releases.atom'
  name 'Nheko'
  homepage 'https://github.com/mujx/nheko'

  app 'Nheko.app'
end
