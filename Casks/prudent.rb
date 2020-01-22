cask 'prudent' do
  version '79.0.3945.88,17'
  sha256 '62d5f78b7cbf5bc029813a3eef28f732d70d40586ff258443e7e2696fb28f78c'

  # github.com/PrudentMe/main was verified as official when first introduced to the cask
  url "https://github.com/PrudentMe/main/releases/download/#{version.after_comma}/Prudent.zip"
  appcast 'https://github.com/PrudentMe/main/releases.atom',
          configuration: version.after_comma
  name 'Prudent'
  homepage 'https://prudent.me/'

  app 'Prudent.app'
end
