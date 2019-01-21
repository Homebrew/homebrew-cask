cask 'electorrent' do
  version '2.5.2'
  sha256 'e7d08a0c4723986e974bcd1bc9e11468f0f916a7b589465bfdf6cbe10809e00f'

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast 'https://github.com/Tympanix/Electorrent/releases.atom'
  name 'Electorrent'
  homepage 'https://github.com/Tympanix/Electorrent'

  app 'Electorrent.app'
end
