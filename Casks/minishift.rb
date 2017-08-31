cask 'minishift' do
  version '1.5.0'
  sha256 '7edd01f8231d135bb8ef54074e38abcebc998c957f9e14b9a2b305f25e7a2e36'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: 'b98d0b863523d4ebe12c39886a5bab76c92f5336b3b7a9d46cfd58cc465b1098'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary 'minishift'
end
