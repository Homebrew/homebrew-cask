cask 'laravel-kit' do
  version '1.2.3'
  sha256 '8f90882f73a14a153e9503e9c3de952252995f8cca0042931d61389202704d73'

  url "https://github.com/tarequemdhanif/laravel-kit/releases/download/v#{version}/laravel-kit-#{version}-mac.zip"
  appcast 'https://github.com/tarequemdhanif/laravel-kit/releases.atom'
  name 'Laravel Kit'
  homepage 'https://github.com/tarequemdhanif/laravel-kit'

  auto_updates true

  app 'Laravel Kit.app'
end
