cask 'nightowl' do
  version '0.2.7'
  sha256 '3e330bc57407cb361900bb1e8782d3c7f4c07ff7c39922486fbd1d7e3178600e'

  url "https://nightowl.kramser.xyz/files/NightOwl#{version}.zip"
  appcast 'https://nightowl.kramser.xyz/'
  name 'NightOwl'
  homepage 'https://nightowl.kramser.xyz/'

  depends_on macos: '>= :mojave'

  app 'NightOwl.app'
end
