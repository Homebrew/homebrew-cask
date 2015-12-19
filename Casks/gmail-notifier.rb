cask 'gmail-notifier' do
  version '2.1.0'
  sha256 '562cad2fd5ea034ff778b4bc37d028b34d535888eac96674e9084afdc3f20092'

  url "https://github.com/jashephe/Gmail-Notifier/releases/download/v#{version}/Gmail.Notifier.v#{version}.zip"
  appcast 'https://github.com/jashephe/Gmail-Notifier/releases.atom'
  name 'Gmail Notifier'
  homepage 'https://github.com/jashephe/Gmail-Notifier'
  license :bsd

  app 'Gmail Notifier.app'
end
