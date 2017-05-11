cask 'freedom' do
  version '1.4.6'
  sha256 'efb5dd8d8679bc4ccd07b7056ff482ace085e55615063a05c2141c8080b73563'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml',
          checkpoint: 'd9bb4ab2f960211a26b7e1b99ac2dd3b2346035d032d944cce12e04a6c688587'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Freedom.app'
end
