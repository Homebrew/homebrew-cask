cask 'electorrent' do
  version '2.1.7'
  sha256 '9caf9257667ea448f4c439cad553a618476c3a16971bf39ee11a69d2910ef88e'

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast 'https://github.com/Tympanix/Electorrent/releases.atom',
          checkpoint: '0d0ba7cec9f443c34fedc12db75f14a7a64ddf4ccc71001ae3583fb327eec2ab'
  name 'Electorrent'
  homepage 'https://github.com/Tympanix/Electorrent'

  app 'Electorrent.app'
end
