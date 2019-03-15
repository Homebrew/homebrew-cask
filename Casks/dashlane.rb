cask 'dashlane' do
  version '6.1909.0.18331'
  sha256 'f08349332fdc90c535d257108c6e5ce2095fcca85bf49255115b639da247355a'

  url "https://cdn5.dashlane.com/proxy/d3mfqat9ni8wb5/releases/#{version.major_minor_patch}/#{version}/release/Dashlane.dmg"
  appcast 'https://ws1.dashlane.com/5/binaries/query?target=archive&format=xml&currentSoftwareVersion=6.0.0&platform=server_osx&os=OS_X_10_14_1'
  name 'Dashlane'
  homepage 'https://www.dashlane.com/'

  depends_on macos: '>= :sierra'

  app 'Dashlane.app'
end
