cask 'eaglefiler' do
  if MacOS.version <= :leopard
    version '1.5.10'
    sha256 '809d2f5d4bf5898170e2884045250ba78cf6b111ab4814a95ae3786ae1f56d68'
    url 'https://c-command.com/downloads/EagleFiler-1.5.10-tiger.dmg'
  elsif MacOS.version <= :snow_leopard
    version '1.8'
    sha256 'c33eee9a919ca730f70dfe05f0ab88bb4173422d53f6efa5b2af21d62a286970'
    url 'https://c-command.com/downloads/EagleFiler-1.8-snow-leopard.dmg'
  else
    version '1.8.4'
    sha256 '7933b9f74f5917ac2e0f59d7f81dead4c2131c298ac1faefa831b21fd52a768b'
    url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  end

  appcast 'https://c-command.com/eaglefiler/help/version-history'
  name 'EagleFiler'
  homepage 'https://c-command.com/eaglefiler/'

  app 'EagleFiler.app'
end
