cask 'plant' do
  version '1.4.0.5'
  sha256 '47cc8e1b527bdb5a600117dd5b24181f419f2fb8e565d3f93002383b0211c288'

  url "https://projects.plantapp.io/app/plant_v#{version}.dmg"
  appcast 'https://projects.plantapp.io/app/changelog.xml',
          checkpoint: '2434e1ce5c2b213335bdb3f2b676f2293610a60d941b6717aa2f4f78d511d5ae'
  name 'Plant'
  homepage 'https://plantapp.io/'

  auto_updates true

  app 'Plant.app'
end
