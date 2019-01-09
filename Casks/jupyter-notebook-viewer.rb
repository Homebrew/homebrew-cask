cask 'jupyter-notebook-viewer' do
  version '0.1.2'
  sha256 'd8d38a77f59613dc94c68f48f95729685ecba0efdccfc8bfb3d2488bfd3a3164'

  url "https://github.com/tuxu/nbviewer-app/releases/download/#{version}/nbviewer-app.zip"
  appcast 'https://github.com/tuxu/nbviewer-app/releases.atom'
  name 'Jupyter Notebook Viewer'
  homepage 'https://github.com/tuxu/nbviewer-app'

  depends_on macos: '>= :sierra'

  app 'Jupyter Notebook Viewer.app'
end
