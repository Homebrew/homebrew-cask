cask 'laravel-kit' do
  version '1.2.3'
  sha256 '8f90882f73a14a153e9503e9c3de952252995f8cca0042931d61389202704d73'

  # github.com/tmdh/laravel-kit/ was verified as official when first introduced to the cask
  url "https://github.com/tmdh/laravel-kit/releases/download/v#{version}/laravel-kit-#{version}-mac.zip"
  appcast 'https://github.com/tmdh/laravel-kit/releases.atom'
  name 'Laravel Kit'
  homepage 'https://tmdh.github.io/laravel-kit'

  auto_updates true

  app 'Laravel Kit.app'
end
