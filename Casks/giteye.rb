cask 'giteye' do
  version '2.2.0'
  sha256 '0bee4971bc495b73832fb46719231eeff10db690c159fa12c0828634ee86b1c3'

  url "https://www.collab.net/sites/default/files/downloads/GitEye-#{version}-macosx.x86_64.zip"
  name 'CollabNet GitEye'
  homepage 'https://www.collab.net/products/giteye'

  app 'GitEye.app'
end
