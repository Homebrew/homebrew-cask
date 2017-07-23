cask 'imitone' do
  version '0.9.2'
  sha256 '9333cbdae9d0c8e137fbb5788dde3ba549b4606ff7933488c57c655e6a7d592a'

  url "https://imitone.com/beta/imitone-#{version}.dmg"
  appcast 'https://imitone.com/beta/',
          checkpoint: '71caf9ea5fdcb051e3133d56183c4c50f950c86e6822783102eb3596b82bacfd'
  name 'imitone'
  homepage 'https://imitone.com/'

  app 'imitone.app'
end
