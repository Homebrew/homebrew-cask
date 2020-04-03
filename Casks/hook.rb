cask 'hook' do
  version '1.4'
  sha256 '60b25c4c5c160ce1360c55700d5aaf6357fc76a931aeae86a8e2e2c0cfdd9564'

  # install.appcenter.ms was verified as official when first introduced to the cask
  url do
    require 'json'
    require 'open-uri'

    owner = 'cogsci-apps'
    app = 'hook'
    distribution_group = 'hook%20productivity%20app%20general%20availability'

    prefix_url = "https://install.appcenter.ms/api/v0.1/apps/#{owner}/#{app}/distribution_groups/#{distribution_group}"
    versions = JSON.parse URI("#{prefix_url}/public_releases").read
    id = versions.find { |v| v['short_version'] == version }['id']
    version = JSON.parse URI("#{prefix_url}/releases/#{id}").read
    version['download_url']
  end
  appcast 'https://api.appcenter.ms/v0.1/public/sparkle/apps/a77a1a87-7d69-435d-90ea-7365b2f7bddb'
  name 'Hook'
  homepage 'https://hookproductivity.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Hook.app'

  uninstall launchctl: 'com.cogsciapps.hookautolaunchhelper',
            quit:      'com.cogsciapps.hook'

  zap trash:
             [
               '~/Library/Caches/com.cogsciapps.hook',
               '~/Library/Logs/com.cogsciapps.hook',
               '~/Library/Preferences/com.cogsciapps.hook.plist',
             ]
end
