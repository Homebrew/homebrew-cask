cask 'minishift' do
  version '1.27.0'
  sha256 '490939962f5cb7ad278aa8cd6ab66f80642711622777c4191997d1cf5525636d'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
