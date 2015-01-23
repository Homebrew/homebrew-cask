cask :v1 => 'pusher' do
  version '0.6.3'
  sha256 '735ad86c7139058e0ae1d2fb7ad0bc516b4b9284e6e0046a1255c360d58dba3c'

  url "https://github.com/noodlewerk/NWPusher/releases/download/#{version}/pusher.app.zip"
  name 'Pusher'
  name 'NWPusher'
  homepage 'https://github.com/noodlewerk/NWPusher'
  license :oss

  app 'Pusher.app'
end
