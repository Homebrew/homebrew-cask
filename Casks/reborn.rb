cask 'reborn' do
  version '0.5.53'
  sha256 'b93d4a14cd21337912cf4923df4a25b3597582558d77562bba72c3d30f64ca76'

  url "https://github.com/langyanduan/Reborn/releases/download/#{version}/Reborn.zip"
  appcast 'https://github.com/langyanduan/Reborn/releases.atom'
  name 'Reborn'
  homepage 'https://github.com/langyanduan/Reborn'

  app 'Reborn.app'
end
