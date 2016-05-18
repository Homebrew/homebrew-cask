cask 'downie' do
  version '2.3.1230'
  sha256 '1655f9668f60d014ff6894ecc033ad3d1647d2c3b2c7045dca5c377c227ac950'

  url "http://trial.charliemonroe.net/downie/Downie_#{version.patch}.zip"
  appcast "http://trial.charliemonroe.net/downie/updates_#{version.major_minor}.xml",
          checkpoint: '62c2b08f36ea18307fc4467684d8e6bf44db19bc0313d6e08351e7b360edfd52'
  name 'Downie'
  homepage 'http://software.charliemonroe.net/downie.php'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
