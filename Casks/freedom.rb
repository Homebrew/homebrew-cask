cask 'freedom' do
  version '1.6.4'
  sha256 '3982738ef62b17092a22387fc1144ac4a457eb62d4d8b46f55308757f4b119f8'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml',
          checkpoint: '4c2ec105e7e42ab8b98beb0431b1cdf75223da0855c17a8c5eb62c18efbf81fe'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Freedom.app'
end
