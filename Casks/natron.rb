cask 'natron' do
  version '2.2.6'
  sha256 '90f154cde045e4a72727f8073e6bb12550a464d9b345b6d9370682d0f95165db'

  url "https://downloads.natron.fr/Mac/releases/Natron-#{version}.dmg",
      referer: 'https://natron.fr/download/?os=Mac'
  appcast 'https://github.com/MrKepzie/Natron/releases.atom',
          checkpoint: 'b275a3eb14ba19e50c55bbf49cc6a54e03aaba19675bf5c7e2f889c304017159'
  name 'Natron'
  homepage 'https://natron.fr/'

  app 'Natron.app'
end
