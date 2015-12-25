cask 'pusher' do
  version '0.6.3'
  sha256 '735ad86c7139058e0ae1d2fb7ad0bc516b4b9284e6e0046a1255c360d58dba3c'

  url "https://github.com/noodlewerk/NWPusher/releases/download/#{version}/pusher.app.zip"
  appcast 'https://github.com/noodlewerk/NWPusher/releases.atom',
          :sha256 => 'e840f17c0b27f00973a76ee6735857687ef3539276135986d00f755d85d22731'
  name 'Pusher'
  name 'NWPusher'
  homepage 'https://github.com/noodlewerk/NWPusher'
  license :bsd

  app 'Pusher.app'
end
