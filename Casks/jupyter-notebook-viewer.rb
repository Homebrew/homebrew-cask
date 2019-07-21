cask 'jupyter-notebook-viewer' do
  version '0.1.3'
  sha256 '4748a12553ff8b3ad9fb6d27560d7045cbfadb7d35b212b432c00e64b002b966'

  url "https://github.com/tuxu/nbviewer-app/releases/download/#{version}/nbviewer-app.zip"
  appcast 'https://github.com/tuxu/nbviewer-app/releases.atom'
  name 'Jupyter Notebook Viewer'
  homepage 'https://github.com/tuxu/nbviewer-app'

  depends_on macos: '>= :sierra'

  app 'Jupyter Notebook Viewer.app'
end
