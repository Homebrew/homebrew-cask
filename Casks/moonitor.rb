cask 'moonitor' do
  version '0.5.0'
  sha256 '4aef3db8c024ed7b6f978c4b42abde306fde2ff20202cf813ff5f582d9a3c355'

  url "https://moonitor.io/wp-content/uploads/app/Moonitor-#{version}.dmg"
  name 'Moonitor'
  homepage 'https://moonitor.io/'

  app 'Moonitor.app'
end
