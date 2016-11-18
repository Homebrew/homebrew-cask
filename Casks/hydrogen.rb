cask 'hydrogen' do
  version '0.9.7,rc1'
  sha256 'daeaa3e7a6fc5ee61a4c59116c90104d2393fd71c8782f136b48bed58d6082db'

  # sourceforge.net/projects/hydrogen was verified as official when first introduced to the cask
  url "https://sourceforge.net/projects/hydrogen/files/Hydrogen/#{version.before_comma}%20Binaries/hydrogen-#{version.before_comma}-#{version.after_comma}.dmg/download"
  appcast "https://sourceforge.net/projects/hydrogen/rss?path=/Hydrogen/#{version.before_comma}%20Binaries",
          checkpoint: '8800dd8de8f03917ff109f548879775f11b5ae7aceecd75089b91a92f9b28f80'
  name 'Hydrogen'
  homepage 'https://www.hydrogen-music.org/hcms/'

  app 'hydrogen.app'
end
