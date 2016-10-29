cask 'harbor' do
  version '0.1.2'
  sha256 '3330b8f76fd7c4e495e8b9ce2e929157b10c3686a33e403478b5f5947aac2b0b'

  url "https://github.com/devmynd/harbor/releases/download/v#{version}/Harbor.app.zip"
  appcast 'https://github.com/devmynd/harbor/releases.atom',
          checkpoint: 'b8f2d7d68567b57751324c4b62a8956f70c52c7cb1237aa16aaf82bd38745aea'
  name 'Harbor'
  homepage 'https://github.com/devmynd/harbor'

  app 'Harbor.app'
end
