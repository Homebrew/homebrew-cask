cask 'fontforge' do
  # https://github.com/fontforge/fontforge/releases/download/20200314/FontForge-2020-03-14-67687b0.app.dmg
  if MacOS.version >= :sierra
    depends_on macos: '>= :sierra'
    version '2020.03.14.67687b0'
    sha256 '394e4b1d216abd3d716dba94d9b6c7eacfdd9b3fa0c48d29fcaa1e27695593ce'
    url "https://github.com/fontforge/fontforge/releases/download/#{version.major_minor_patch.no_dots}/FontForge-#{version.dots_to_hyphens}.app.dmg"

  # https://github.com/fontforge/fontforge/releases/download/20170731/FontForge-20170730-Mac.dmg
  elsif MacOS.version >= :yosemite
    depends_on macos: '>= :yosemite'
    version '2017.07.31'
    sha256 '980c66e00f0f5c7a722eadd8b78a0ef2b20a7ccd952149cbfdfeaae9e66e4d4e'
    url "https://github.com/fontforge/fontforge/releases/download/#{version.no_dots}/FontForge-#{version.no_dots.to_i - 1}-Mac.dmg"

  # https://github.com/fontforge/fontforge/releases/download/20150430/FontForge-2015-04-30-Mac.app.dmg
  else
    depends_on macos: '>= :mavericks'
    version '2015.04.31'
    sha256 '69f01a6d15fc0e93c259828ec29e8e6243ba5a35017bee17d101ee54c2c2ab86'
    url "https://github.com/fontforge/fontforge/releases/download/#{version.no_dots}/FontForge-#{version.dots_to_hyphens}-Mac.dmg"
  end

  # github.com/fontforge/fontforge was verified as official when first introduced to the cask
  appcast 'https://github.com/fontforge/fontforge/releases.atom',
          configuration: version.major_minor_patch.dots_to_hyphens
  name 'FontForge'
  homepage 'https://fontforge.github.io/en-US/'

  app 'FontForge.app'

  zap trash: [
               '~/.cache/fontforge',
             ]
end
