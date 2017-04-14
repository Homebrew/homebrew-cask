cask 'darktable' do
  version '2.2.4,3'
  sha256 'b44345a02cab9b5d8cf0ac5aa050389479763cc2c2d5b4f7f71f927a72d2e056'

  # github.com/darktable-org/darktable was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.before_comma}/darktable-#{version.before_comma}.#{version.after_comma}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom',
          checkpoint: '94669d14c09987ea6f6e9d7cd95267a4c1c7357e073b9725931068de2e02d9de'
  name 'darktable'
  homepage 'https://www.darktable.org/'

  depends_on macos: '>= :lion'

  app 'darktable.app'
end
