cask 'dashlane' do
  version '6.1914.0.19481'
  sha256 '0d3852cb0b76e4fe20a541722f2ce56c1d79042b809dd76f824ffa1e15121658'

  url "https://cdn5.dashlane.com/proxy/d3mfqat9ni8wb5/releases/#{version.major_minor_patch}/#{version}/release/Dashlane.dmg"
  appcast 'https://ws1.dashlane.com/5/binaries/query?target=archive&format=xml&currentSoftwareVersion=6.0.0&platform=server_osx&os=OS_X_10_14_1'
  name 'Dashlane'
  homepage 'https://www.dashlane.com/'

  depends_on macos: '>= :sierra'

  app 'Dashlane.app'
end
