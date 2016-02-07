cask 'shortcat' do
  version '0.7.6'
  sha256 'b78f20a94e0270ea1b0376677c07559db0e91c4ac53227b588adee46f971be1b'

  url "https://files.shortcatapp.com/v#{version}/Shortcat.zip"
  appcast 'https://shortcatapp.com/changelog.html',
          checkpoint: 'c63b2b590d976d5fb83ebacb974a19052c4e56d21627fdf773685bcad192816f'
  name 'Sproutcube Shortcat'
  homepage 'https://shortcatapp.com/'
  license :commercial

  app 'Shortcat.app'
end
