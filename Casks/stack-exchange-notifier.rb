cask 'stack-exchange-notifier' do
  version '1.1'
  sha256 '849b543bc724e735e9a951721159b45a5284fde44c4cd8caa74c0e7eefb7e30c'

  url "https://hewgill.com/senotifier/stack-exchange-notifier-#{version}.dmg"
  name 'Stack Exchange Notifier'
  homepage 'https://hewgill.com/senotifier/'

  app 'Stack Exchange Notifier.app'
end
