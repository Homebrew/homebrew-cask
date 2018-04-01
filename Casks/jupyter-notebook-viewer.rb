cask 'jupyter-notebook-viewer' do
  version '0.1.1'
  sha256 '4157b2d79185027d9c67c3c4d6e1b0cd4da8d3c0587bda296125d945f278a863'

  url "https://github.com/tuxu/nbviewer-app/releases/download/#{version}/nbviewer-app.zip"
  appcast 'https://github.com/tuxu/nbviewer-app/releases.atom',
          checkpoint: '91dd5229cdb8130c9c101554af84b040555fc8600d774b2729b363ed76e5a7c3'
  name 'Jupyter Notebook Viewer'
  homepage 'https://github.com/tuxu/nbviewer-app'

  app 'Jupyter Notebook Viewer.app'
end
