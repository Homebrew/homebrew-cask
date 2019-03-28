cask 'dashlane' do
  version '6.1911.2.19115'
  sha256 'a96fcd842e3a5b0a195f6ed236ac55384786e292f5cd51e74d6529b9614c29e5'

  url "https://cdn5.dashlane.com/proxy/d3mfqat9ni8wb5/releases/#{version.major_minor_patch}/#{version}/release-#{version.minor}-#{version.patch}/Dashlane.dmg"
  appcast 'https://ws1.dashlane.com/5/binaries/query?target=archive&format=xml&currentSoftwareVersion=6.0.0&platform=server_osx&os=OS_X_10_14_1'
  name 'Dashlane'
  homepage 'https://www.dashlane.com/'

  depends_on macos: '>= :sierra'

  app 'Dashlane.app'
end
