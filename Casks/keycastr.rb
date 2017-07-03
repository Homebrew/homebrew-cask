cask 'keycastr' do
  version '0.9.4'
  sha256 '24e88923e8b3fe8920344f2715cc5b43f710f81fecc4ef1fcbe2e3a6f40b0d28'

  url "https://github.com/keycastr/keycastr/releases/download/v#{version}/KeyCastr.app.zip"
  appcast 'https://github.com/keycastr/keycastr/releases.atom',
          checkpoint: '94cc11a01ddd17976ee22fdf5672bb2d04e4f9cd33b6c940e85a9bd80c5d64ff'
  name 'KeyCastr'
  homepage 'https://github.com/keycastr/keycastr'

  accessibility_access true

  app 'KeyCastr.app'
end
