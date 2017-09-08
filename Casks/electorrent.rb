cask 'electorrent' do
  version '2.1.10'
  sha256 '1d21744666942f2bebd2ecc4032928051352bb9fa1d422a50d376f6b5d2530f4'

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast 'https://github.com/Tympanix/Electorrent/releases.atom',
          checkpoint: '54448b7b27af6ba9691f333a02337a517a8703e23ade960e99a09ee39fe2a33e'
  name 'Electorrent'
  homepage 'https://github.com/Tympanix/Electorrent'

  app 'Electorrent.app'
end
