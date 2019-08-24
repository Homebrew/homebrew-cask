cask 'maccy' do
  version '0.4.1'
  sha256 '467b57e4aeeee528a61942cd8ccf68ddb292a4f4661edbc3db0de399bf20add4'

  url "https://github.com/p0deje/Maccy/releases/download/#{version}/Maccy.app.zip"
  appcast 'https://github.com/p0deje/Maccy/releases.atom'
  name 'Maccy'
  homepage 'https://github.com/p0deje/Maccy'

  depends_on macos: '>= :mojave'

  app 'Maccy.app'
end
