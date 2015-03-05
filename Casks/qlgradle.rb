cask :v1 => 'qlgradle' do
  version '0.0.1'
  sha256 'ea76846953ecfbd180d65167ec31cb7c316030f500a6669cd79857c03b951b63'

  url "https://github.com/Urucas/QLGradle/releases/download/#{version}/QLGradle.qlgenerator.zip"
  name 'qlgradle'
  homepage 'https://github.com/Urucas/QLGradle'
  license :mit 

  qlplugin 'QLGradle.qlgenerator'
end
