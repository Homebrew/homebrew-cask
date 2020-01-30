cask 'freedom' do
  version '2.2.9'
  sha256 '1761ba7a0c739e78c02d7a4fb8538440d4ecaead450500d077db62026c4f5389'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true

  app 'Freedom.app'
end
