cask 'gray' do
  version '0.9.9'
  sha256 '4a5bca51699a7bd2529bdf3d8b8899d7066575893949c416a81882d1768a5c28'

  url "https://github.com/zenangst/Gray/releases/download/#{version}/Gray.zip"
  appcast 'https://github.com/zenangst/Gray/releases.atom'
  name 'Gray'
  homepage 'https://github.com/zenangst/Gray'

  depends_on macos: '>= :mojave'

  app 'Gray.app'
end
