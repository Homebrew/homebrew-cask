cask 'openbookdesktop' do
  version '0.0.34-3'
  sha256 'e7b90eb7b48c807b102fe3d3e1b8dfe5ce450d17c306a7e7f2039269d8a23767'

  url "https://gitlab.com/999eagle/openbook-desktop/-/jobs/artifacts/#{version}/download?job=release-macos"
  name 'openbook-desktop'
  homepage 'https://gitlab.com/999eagle/openbook-desktop'

  app 'OpenbookDesktop.app'
end
