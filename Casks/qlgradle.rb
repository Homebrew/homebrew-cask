cask 'qlgradle' do
  version '0.0.1'
  sha256 'ea76846953ecfbd180d65167ec31cb7c316030f500a6669cd79857c03b951b63'

  url "https://github.com/Urucas/QLGradle/releases/download/#{version}/QLGradle.qlgenerator.zip"
  appcast 'https://github.com/Urucas/QLGradle/releases.atom',
          checkpoint: 'ea552ca1b91e1834fc259e47343925b314e1c6133e4c47a9273b6c4bdf8fd24b'
  name 'qlgradle'
  homepage 'https://github.com/Urucas/QLGradle'

  qlplugin 'QLGradle.qlgenerator'
end
