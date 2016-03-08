cask 'knuff' do
  version '1.0'
  sha256 '4b5e88736e5d9443a84a204ba6c2a35faa7dfa6a6f94fb15286c70f07ef94744'

  url "https://github.com/KnuffApp/Knuff/releases/download/v#{version}/Knuff.app.zip"
  appcast 'https://github.com/KnuffApp/Knuff/releases.atom',
          checkpoint: 'f8439225f5be2692f130847a8c1f15ca9303e5e9b6e76d959771bd938be29cad'
  name 'Knuff'
  homepage 'https://github.com/KnuffApp/Knuff'
  license :mit

  app 'Knuff.app'
end
