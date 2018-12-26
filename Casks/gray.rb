cask 'gray' do
  version '0.9.10'
  sha256 'f53b93be6579d235ab75339efe325a8dc82960c57a8b9dc0314ff5d5b886867a'

  url "https://github.com/zenangst/Gray/releases/download/#{version}/Gray.zip"
  appcast 'https://github.com/zenangst/Gray/releases.atom'
  name 'Gray'
  homepage 'https://github.com/zenangst/Gray'

  depends_on macos: '>= :mojave'

  app 'Gray.app'
end
