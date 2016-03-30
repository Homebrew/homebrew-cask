cask 'hub' do
  version '2.2.3'
  sha256 '42454bb2e4733938dfb3a50fb73c462e898132dafd6bd83a5a17908e4c6f1646'

  url "https://github.com/github/hub/releases/download/v#{version}/hub-darwin-amd64-#{version}.tgz"
  appcast 'https://github.com/github/hub/releases.atom',
          checkpoint: '0f62a4c284813725a5b5ef3c724340adb4dff89f7fb83904632bc94fe524cf82'
  name 'hub'
  homepage 'https://github.com/github/hub'
  license :mit

  binary "hub-darwin-amd64-#{version}/bin/hub"
end
