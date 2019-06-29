cask 'maccy' do
  version '0.3.5'
  sha256 '4e9a8f52e7cc322aa8dd76636542d92ec663d54d9fc9ffee4cca29c4233aefda'

  url "https://github.com/p0deje/Maccy/releases/download/#{version}/Maccy.app.zip"
  appcast 'https://github.com/p0deje/Maccy/releases.atom'
  name 'Maccy'
  homepage 'https://github.com/p0deje/Maccy'

  app 'Maccy.app'
end
