cask 'freedom' do
  version '2.1.1'
  sha256 'f2eb146fae73dd6e4bb8e278ae1d5eb9957fe3e151373d381b0ea7ba26b4e85e'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true

  app 'Freedom.app'
end
