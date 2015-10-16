cask :v1 => 'archi' do
  version '3.2.1'
  sha256 '6ac375c6acc56d238704e98a0900225859c1593a2be612ccf3d25baf715a5d47'

  url "http://www.archimatetool.com/downloads/latest/Archi-mac64-#{version}.zip"
  name 'Archi'
  homepage 'http://www.archimatetool.com'
  license :mit

  app 'Archi/Archi.app'
end
