cask 'paw' do
  version '2.3.1'
  sha256 '0d357eb96c28ee17114ad09dc82370f9d1620e98ea9ae8a7641afc369751e585'

  url "https://luckymarmot.com/paw/download/#{version}"
  appcast "https://luckymarmot.com/api/v#{version.major}/updates/appcast",
          checkpoint: '125bec971b3e45197be8cd1d2f2c6c2df13ef36d175ffed53c9021f8865a7575'
  name 'Paw'
  homepage 'https://luckymarmot.com/paw'
  license :commercial

  app 'Paw.app'
end
