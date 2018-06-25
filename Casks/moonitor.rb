cask 'moonitor' do
  version '0.4.1'
  sha256 'e3e6fd3b9e05c9b230dc24ab218a107189bf88621280095467b7f8faa6c33316'

  url "https://moonitor.io/wp-content/uploads/app/Moonitor-#{version}.dmg"
  name 'Moonitor'
  homepage 'https://moonitor.io/'

  app 'Moonitor.app'
end
