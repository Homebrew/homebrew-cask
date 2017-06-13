cask 'freedom' do
  version '1.4.8'
  sha256 'a77939c580204b3a8e2c621d952f8d599cd2ad146d5b6fed56a42b0d6bec35e7'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml',
          checkpoint: '985882b2e4acdc3c9d59bcfa3397145453cffc58c477c4ee12dbaf6d1832f52a'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Freedom.app'
end
