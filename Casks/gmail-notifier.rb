cask :v1 => 'gmail-notifier' do
  version '2.0.1'
  sha256 '6d91b6b0e00041cde61a267c484f6f004330a96dfd608a61f7954f5b7abdd66e'

  url "https://github.com/jashephe/Gmail-Notifier/releases/download/v#{version}/Gmail.Notifier.v#{version}.zip"
  appcast 'https://github.com/jashephe/Gmail-Notifier/releases.atom'
  name 'Gmail Notifier'
  homepage 'https://github.com/jashephe/Gmail-Notifier'
  license :bsd

  app 'Gmail Notifier.app'
end
