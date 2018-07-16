cask 'beam' do
  version '2.22.1'
  sha256 '6d5a747236d60d21e9559b149a557d05a9c73ed134a7b11b28dd1d912ba4323e'

  url "https://app.suitabletech.com/api/1/get_installer/stable/macosx/#{version}/"
  name "beam-stable-#{version}-Darwin.dmg"
  homepage 'https://app.suitabletech.com/'

  app 'Beam.app'
end
