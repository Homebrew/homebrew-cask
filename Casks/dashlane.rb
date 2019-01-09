cask 'dashlane' do
  version '6.1901.0.16467'
  sha256 'fd91dfb3caebf7c0576efbf40998453d83293c243d9cdcbed6811e90e642f4fb'

  url "https://cdn5.dashlane.com/proxy/d3mfqat9ni8wb5/releases/#{version.major_minor_patch}/#{version}/release/Dashlane.dmg"
  appcast 'https://ws1.dashlane.com/5/binaries/query?target=archive&format=xml&currentSoftwareVersion=6.0.0&platform=server_osx&os=OS_X_10_14_1'
  name 'Dashlane'
  homepage 'https://www.dashlane.com/'

  depends_on macos: '>= :sierra'

  app 'Dashlane.app'
end
