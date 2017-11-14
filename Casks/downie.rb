cask 'downie' do
  version '3.0.8,1701'
  sha256 '83ba692cf332ba39ef959d67946230c529a3af646d988733a9786e6d101f9a4e'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml",
          checkpoint: 'ee7c2f0473b0896baa7b539b0a9d76c8d8b508b06a589e325c3568fd81661f08'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
