cask 'coronasdk' do
  version '2018.3326'
  sha256 'f02dde42feaaec458e7ad170a9474693864148a5a1e01fbf828f4c6b9208a89d'

  url "https://developer.coronalabs.com/sites/default/files/Corona-#{version}.dmg"
  name 'Corona SDK'
  homepage 'https://coronalabs.com/'

  suite 'Corona'
end
