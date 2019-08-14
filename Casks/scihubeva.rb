cask 'scihubeva' do
  version 'v3.1.1'
  sha256 'd89db82c6112cf5ea68a44457d5e243fbd7831fd2c29bae6e3d77754c3cff54a'

  url "https://github.com/leovan/SciHubEVA/releases/download/#{version}/SciHubEVA-#{version}.dmg"
  appcast 'https://github.com/leovan/SciHubEVA/releases.atom'
  name 'SciHubEVA'
  homepage 'https://github.com/leovan/SciHubEVA'

  app 'SciHubEVA.app'
end
