cask 'jupyter-notebook-viewer' do
  version '0.1.2'
  sha256 'd8d38a77f59613dc94c68f48f95729685ecba0efdccfc8bfb3d2488bfd3a3164'

  url "https://github.com/tuxu/nbviewer-app/releases/download/#{version}/nbviewer-app.zip"
  appcast 'https://github.com/tuxu/nbviewer-app/releases.atom',
          checkpoint: '15f5d75a1047f7c338495ec8b0ce3c8cee77b13ae13c88f02aca9db6d9fce1eb'
  name 'Jupyter Notebook Viewer'
  homepage 'https://github.com/tuxu/nbviewer-app'

  app 'Jupyter Notebook Viewer.app'
end
