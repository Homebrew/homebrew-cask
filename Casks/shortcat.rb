class Shortcat < Cask
  version '0.7.1'
  sha256 '9d7c2b0f2ec6ce03d0ccdf5ad15db3136ae344d26c09d1e5a8753e7b5698dc1a'

  url "https://files.shortcatapp.com/v#{version}/Shortcat.zip"
  appcast 'https://shortcatapp.com/updates/appcast.xml'
  homepage 'http://shortcatapp.com/'

  link 'Shortcat.app'
end
