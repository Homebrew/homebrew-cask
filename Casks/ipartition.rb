cask 'ipartition' do
  version '3.5.1'
  sha256 'c3400af48b24ea2f30d6d1f829c761a0542cc04ecbe87755223d95418ddeb40a'

  url "https://coriolis-systems.com/downloads/iPartition-#{version}.dmg"
  name 'iPartition'
  homepage 'https://coriolis-systems.com/iPartition/'

  app 'iPartition.app'
end
