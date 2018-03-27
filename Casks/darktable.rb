cask 'darktable' do
  version '2.4.2'
  sha256 '2b0b456f6efbc05550e729a388c55e195eecc827b0b691cd42d997b026f0867c'

  # github.com/darktable-org/darktable was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.before_comma}/darktable-#{version.before_comma}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom',
          checkpoint: '69ab2ed06877928ab72c5b942d8a0b806460e34f828875c220455153dd637fdf'
  name 'darktable'
  homepage 'https://www.darktable.org/'

  depends_on macos: '>= :lion'

  app 'darktable.app'
end
