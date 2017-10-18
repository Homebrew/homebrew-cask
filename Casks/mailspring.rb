cask 'mailspring' do
  version :latest
  sha256 :no_check

  url 'https://updates.getmailspring.com/download?platform=darwin'
  name 'Mailspring'
  homepage 'https://getmailspring.com/'

  auto_updates true

  app 'Mailspring.app'
end
