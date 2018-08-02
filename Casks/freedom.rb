cask 'freedom' do
  version '1.6.10'
  sha256 '773480972f6bac66664615447765e5fe4e804802449a0887b85da0610ecf8926'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Freedom.app'
end
