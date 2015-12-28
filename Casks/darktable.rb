cask 'darktable' do
  version '2.0.0'
  sha256 '1019646522c3fde81ce0de905220a88b506c7cec37afe010af7d458980dd08bd'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom',
          :sha256 => 'db63bd878b86eeabbf524a936fb843661b9778d2a3f17b022a7a83de7cc3b076'
  name 'darktable'
  homepage 'https://www.darktable.org/'
  license :gpl

  app 'darktable.app'
end
