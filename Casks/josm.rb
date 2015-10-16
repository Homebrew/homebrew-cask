cask :v1 => 'josm' do
  version '8800'
  sha256 '2be90f9a3d3cbd550f2164441c54c0413ec4d058e55adca07f44d9df0db15213'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'http://josm.openstreetmap.de'
  license :gpl

  app 'JOSM.app'
end
