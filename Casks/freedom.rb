cask 'freedom' do
  version '2.0.1'
  sha256 '1ab1b4703395f0c0532e5e833cc7a2919b67f69eec467cc2008bd612ce29d43e'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Freedom.app'
end
