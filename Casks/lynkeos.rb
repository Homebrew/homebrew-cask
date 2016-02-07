cask 'lynkeos' do
  version '2.10'
  sha256 'bd27055c51575555a1c8fe546cf057c57c0e45ea5d252510847277734dc550a4'

  url "http://downloads.sourceforge.net/project/lynkeos/lynkeos/#{version}/Lynkeos-App-#{version.dots_to_hyphens}.zip"
  name 'Lynkeos'
  homepage 'http://lynkeos.sourceforge.net/'
  license :gpl

  app "Lynkeos-App-#{version.dots_to_hyphens}/Lynkeos.app"
end
