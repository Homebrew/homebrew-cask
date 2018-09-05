cask 'lynkeos' do
  version '2.10'
  sha256 'bd27055c51575555a1c8fe546cf057c57c0e45ea5d252510847277734dc550a4'

  url "https://downloads.sourceforge.net/lynkeos/lynkeos/#{version}/Lynkeos-App-#{version.dots_to_hyphens}.zip"
  appcast 'https://sourceforge.net/projects/lynkeos/rss?path=/lynkeos'
  name 'Lynkeos'
  homepage 'http://lynkeos.sourceforge.net/'

  app "Lynkeos-App-#{version.dots_to_hyphens}/Lynkeos.app"
end
