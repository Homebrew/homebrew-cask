cask 'maccy' do
  version '0.5.1'
  sha256 'ad71007a32378ee9b07caed6b67e9ae9c7bc53b9bdfaba59b30f139cbb1dd994'

  url "https://github.com/p0deje/Maccy/releases/download/#{version}/Maccy.app.zip"
  appcast 'https://github.com/p0deje/Maccy/releases.atom'
  name 'Maccy'
  homepage 'https://github.com/p0deje/Maccy'

  depends_on macos: '>= :high_sierra'

  app 'Maccy.app'
end
