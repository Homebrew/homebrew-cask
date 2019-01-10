cask 'ao' do
  version '6.5.0'
  sha256 'b7bb079f5e97d05f83166953ba4794b175b1e9a3a517fabbdae46bab9a835e22'

  url "https://github.com/klaussinani/ao/releases/download/v#{version}/Ao-#{version}.dmg"
  appcast 'https://github.com/klaussinani/ao/releases.atom'
  name 'Ao'
  homepage 'https://github.com/klaussinani/ao'

  app 'Ao.app'
end
