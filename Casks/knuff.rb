cask 'knuff' do
  version '1.0'
  sha256 '4b5e88736e5d9443a84a204ba6c2a35faa7dfa6a6f94fb15286c70f07ef94744'

  url "https://github.com/KnuffApp/Knuff/releases/download/v#{version}/Knuff.app.zip"
  name 'Knuff'
  homepage 'https://github.com/KnuffApp/Knuff'
  license :mit

  app 'Knuff.app'
end
