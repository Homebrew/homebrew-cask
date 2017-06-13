cask 'minishift' do
  version '1.1.0'
  sha256 '6c516e11c8b69995df76e39100cda98906259ea5f5ceb860cac51a451bc39d0a'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: 'b6068bca3356018f3bddba72eb7b6ee45caa29846c3284956504d13603963111'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary 'minishift'
end
