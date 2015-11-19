cask :v1 => 'endlesssky' do
  version '0.8.7'
  sha256 'cd8e56145a7b8639c9302798e5dfb8d2684bfc734a6d6aa38ef498b457816840'

  url "https://github.com/endless-sky/endless-sky/releases/download/#{version}/endless-sky-macosx-#{version}.dmg"
  appcast 'https://github.com/endless-sky/endless-sky/releases.atom'
  name 'Endless Sky'
  homepage 'https://endless-sky.github.io/'
  license :gpl

  app 'EndlessSky.app'
end
