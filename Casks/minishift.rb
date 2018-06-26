cask 'minishift' do
  version '1.20.0'
  sha256 '8877897d06d134a00bcd7801e8239ab323519d84fca15d07d4ea0a83ffbf6072'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
