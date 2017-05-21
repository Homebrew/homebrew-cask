cask 'minishift' do
  version '1.0.1'
  sha256 '1bf40df9909a7a44fbdb0f229eaff86a803e080a365c7d05f54bf6af1c19f58d'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: '80a24dd49bb10aa5a8ef21dc492eb487f4931343224662049b2118250b4ab49a'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary 'minishift'
end
