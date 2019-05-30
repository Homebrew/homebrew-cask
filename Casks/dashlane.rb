cask 'dashlane' do
  version '6.1918.1.20296'
  sha256 'c80a1f6a1934aad9792ef63f8c8d7249fda9781e736cba087041f19693d6662b'

  url "https://cdn5.dashlane.com/proxy/d3mfqat9ni8wb5/releases/#{version.major_minor_patch}/#{version}/qa-safariAppExtension/Dashlane.dmg"
  appcast 'https://ws1.dashlane.com/5/binaries/query?target=archive&format=xml&currentSoftwareVersion=6.0.0&platform=server_osx&os=OS_X_10_14_1'
  name 'Dashlane'
  homepage 'https://www.dashlane.com/'

  depends_on macos: '>= :sierra'

  app 'Dashlane.app'
end
