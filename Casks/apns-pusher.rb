cask :v1 => 'apns-pusher' do
  version '2.3'
  sha256 '6aa54050bea8603b45e6737bf2cc6997180b1a58f1d02095f5141176a1335205'

  url "https://github.com/blommegard/APNS-Pusher/releases/download/v#{version}/APNS.Pusher.app.zip"
  homepage 'https://github.com/blommegard/APNS-Pusher'
  license :oss

  app 'APNS Pusher.app'
end
