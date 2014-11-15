cask :v1 => 'dropbox-encore' do
  version '1.0'
  sha256 '2dfa8abd5a1b48b5e1f323b5167a1ef53559f862520bf358f9500aa328ecaf90'

  url "http://www.joyofmacs.com/downloads/DropboxEncore#{version}.dmg"
  homepage 'http://www.joyofmacs.com/software/dropboxencore/'
  license :unknown

  app 'Dropbox Encore.app'
end
