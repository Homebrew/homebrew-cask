cask 'dashlane' do
  version '6.1844.0.14691'
  sha256 '24b8cfca4698cdbbf53309b3abe09a5308f888fc0e46096b53d596c2c30a4b3b'

  url "https://cdn5.dashlane.com/proxy/d3mfqat9ni8wb5/releases/#{version.major_minor_patch}/#{version}/release/Dashlane.dmg"
  appcast 'https://ws1.dashlane.com/5/binaries/query?target=archive&format=xml&currentSoftwareVersion=6.0.0&platform=server_osx&os=OS_X_10_14_1'
  name 'Dashlane'
  homepage 'https://www.dashlane.com/'

  app 'Dashlane.app'
end
