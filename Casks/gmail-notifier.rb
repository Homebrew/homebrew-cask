cask 'gmail-notifier' do
  version '2.1.0'
  sha256 '562cad2fd5ea034ff778b4bc37d028b34d535888eac96674e9084afdc3f20092'

  url "https://github.com/jashephe/Gmail-Notifier/releases/download/v#{version}/Gmail.Notifier.v#{version}.zip"
  appcast 'https://github.com/jashephe/Gmail-Notifier/releases.atom',
          checkpoint: 'd233f4257fe1131fafbe6b7387422b33e00e80d8bb75958ac113a6a20d40e0a4'
  name 'Gmail Notifier'
  homepage 'https://github.com/jashephe/Gmail-Notifier'

  app 'Gmail Notifier.app'
end
