cask 'freedom' do
  version '2.2.3'
  sha256 'd753dc72c3c59e3ee6bb8a90f3a0aa2c1daebe325df1cd26e70fb36fe7816ff3'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true

  app 'Freedom.app'
end
