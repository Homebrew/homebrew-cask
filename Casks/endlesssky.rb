cask 'endlesssky' do
  version '0.9.4'
  sha256 '0f05a81aa3db2979328096f50e4d8391380eb8abbe93d42105988ece8359c4ca'

  # github.com/endless-sky/endless-sky was verified as official when first introduced to the cask
  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macosx-#{version}.dmg"
  appcast 'https://github.com/endless-sky/endless-sky/releases.atom',
          checkpoint: '07b93c262346e01fe748c5af9c1069481bc0f39d6daef8ae66bb9faf660cbd7d'
  name 'Endless Sky'
  homepage 'https://endless-sky.github.io/'

  app 'EndlessSky.app'
end
