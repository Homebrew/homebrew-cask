cask 'pencil' do
  version '2.0.21'
  sha256 '19f8d5a82eb79ad02d8a669a7bb178d0036b17314e81c94845da144d87dd8acd'

  url "https://github.com/prikhi/pencil/releases/download/v#{version}/Pencil-#{version}-mac-osx.zip"
  appcast 'https://github.com/prikhi/pencil/releases.atom',
          checkpoint: '0201d816a97457eb9aacd6356299dcb0c39d135adce4e8c3ac11922c30a0ddad'
  name 'Pencil'
  homepage 'https://github.com/prikhi/pencil'

  app 'Pencil.app'
end
