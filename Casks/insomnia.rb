cask 'insomnia' do
  version '4.0.5'
  sha256 'd07d7e0bd7e575ba8e6030355c2dbdf7979e65b7eafc478d1c55a948104be98c'

  url "https://downloads.insomnia.rest/mac/Insomnia-#{version}.dmg"
  name 'Insomnia'
  homepage 'https://insomnia.rest/'

  app 'Insomnia.app'
end
