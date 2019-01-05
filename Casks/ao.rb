cask 'ao' do
  version '6.1.0'
  sha256 'f83c1194b68c7a2a71b03c09ab4e5c5d610d6f33560db3aa963c0397e399bc36'

  url "https://github.com/klaussinani/ao/releases/download/v#{version}/Ao-#{version}.dmg"
  appcast 'https://github.com/klaussinani/ao/releases.atom'
  name 'Ao'
  homepage 'https://github.com/klaussinani/ao'

  app 'Ao.app'
end
