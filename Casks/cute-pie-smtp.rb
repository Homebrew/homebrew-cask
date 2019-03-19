cask 'cute-pie-smtp' do
  version '0.17.4'
  sha256 'c42750ce47349bd5a1e77c7bfc3563d4deb3230dcf6720685e5f94d88977f136'

  url 'https://github.com/elFua/cutepiesmtp/releases/download/0.173.2221/cutePieSMTP-0.174.dmg'
  appcast 'https://github.com/elFua/cutepiesmtp/releases.atom'
  name 'CutePieSMTP'
  homepage 'https://github.com/elFua/cutepiesmtp'

  app 'CutePieSmtpDaemon.app'

  zap trash: [
               '~/Cute Pie SMTP Daemon',
             ]
end
