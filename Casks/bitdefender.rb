cask 'bitdefender' do
  version ':latest'
  sha256 '6650cbe63b87ccc342c3f7a953bff4b6fe3f667d09e6cde7ac6281546532ef09'

  url 'https://flow.bitdefender.net/connect/release/en_us/bitdefender_5d739df5-ff3b-48ec-9a64-cedf01924755.pkg'
  name 'BitDefender'
  homepage 'https://www.bitdefender.com/'

  pkg 'bitdefender_5d739df5-ff3b-48ec-9a64-cedf01924755.pkg'

  uninstall pkgutil: 'com.bitdefender.*'
end
