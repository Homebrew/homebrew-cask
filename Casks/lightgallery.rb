cask 'lightgallery' do
  version '0.1.1'
  sha256 '5650328b475391c5c16cbc616096fe70a8ec7c8e5f19329fd2bd660d7ac104cd'

  # github.com/sachinchoolur/lightgallery-desktop was verified as official when first introduced to the cask
  url "https://github.com/sachinchoolur/lightgallery-desktop/releases/download/#{version}/lightgallery_#{version}.dmg-mac.zip"
  appcast 'https://github.com/sachinchoolur/lightgallery-desktop/releases.atom',
          checkpoint: '0b289b08e63fd75c148761f82e012bdd2b486bbfdab7e933114951323c9e201c'
  name 'lightgallery'
  homepage 'https://sachinchoolur.github.io/lightgallery-desktop/'

  app 'lightgallery.app'
end
