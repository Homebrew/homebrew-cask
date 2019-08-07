cask 'maccy' do
  version '0.4.0'
  sha256 '86f9821c261550556c08940324d3862f890e5ab57bd97e70640f77c89e05f8b1'

  url "https://github.com/p0deje/Maccy/releases/download/#{version}/Maccy.app.zip"
  appcast 'https://github.com/p0deje/Maccy/releases.atom'
  name 'Maccy'
  homepage 'https://github.com/p0deje/Maccy'

  depends_on macos: '>= :mojave'

  app 'Maccy.app'
end
