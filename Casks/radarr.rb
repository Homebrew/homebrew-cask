cask 'radarr' do
  version '0.2.0.1480'
  sha256 '8bd4770bbaa63aa0515a1b300cc2432c1e08afbb9f25a62011c63c910ec53c94'

  # github.com/Radarr/Radarr was verified as official when first introduced to the cask
  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.develop.#{version}.osx-app.zip"
  appcast 'https://github.com/Radarr/Radarr/releases.atom'
  name 'Radarr'
  homepage 'https://radarr.video/'

  depends_on formula: 'mono'

  app 'Radarr.app'

  preflight do
    set_permissions "#{staged_path}/Radarr.app", '0755'
  end
end
