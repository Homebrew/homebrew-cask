cask 'apns-pusher' do
  version '2.3'
  sha256 '6aa54050bea8603b45e6737bf2cc6997180b1a58f1d02095f5141176a1335205'

  url "https://github.com/KnuffApp/APNS-Pusher/releases/download/v#{version}/APNS.Pusher.app.zip"
  appcast 'https://github.com/KnuffApp/APNS-Pusher/releases.atom',
          :sha256 => 'e038f77b5424d6b3a1b70a2a8c23eb231771b46e72fc446b136d8453f1de0d9e'
  name 'APNS Pusher'
  homepage 'https://github.com/KnuffApp/APNS-Pusher'
  license :mit

  app 'APNS Pusher.app'
end
