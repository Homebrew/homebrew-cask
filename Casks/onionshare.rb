cask :v1 => 'onionshare' do
  version '0.4'
  sha256 '80c583f1dc280f08c11dc60b308e2f6d8fe31c554d59f795ccf0f3252733a6ce'

  url "https://onionshare.org/files/#{version}/OnionShare-#{version}.dmg"
  gpg "#{url}.sig",
      :key_url => 'https://onionshare.org/signing-key.asc'
  name 'OnionShare'
  homepage 'https://onionshare.org/'
  license :gpl

  app 'OnionShare.app'
end
