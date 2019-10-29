cask 'luyten' do
  version '0.5.4,0.5.4_Rebuilt_with_Latest_depenencies'
  sha256 '7f48f8b75991c1c039cfb901440fa05dd3cf18e2219e39cf19f86aaf551a097e'

  # github.com/deathmarine/Luyten was verified as official when first introduced to the cask
  url "https://github.com/deathmarine/Luyten/releases/download/v#{version.after_comma}/luyten-OSX-#{version.before_comma}.zip"
  appcast 'https://github.com/deathmarine/Luyten/releases.atom'
  name 'Luyten'
  homepage 'https://deathmarine.github.io/Luyten/'

  app 'Luyten.app'
end
