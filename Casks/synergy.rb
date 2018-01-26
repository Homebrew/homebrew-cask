cask 'synergy' do
  version '2.0.4,b1322-fcb59be4'
  sha256 'f2069f7097e7b2cf7f3160e17d5df04125b0d28ac6a9b32d9e97762e234b0789'

  url "https://binaries.symless.com/v#{version.before_comma}/Synergy_v#{version.before_comma}-stable_#{version.after_comma}.dmg"
  appcast 'https://github.com/symless/synergy-core/releases.atom',
          checkpoint: '30225dbfbca4a5ccb30bf3f54cd7fe1b0603cf5cdab715c10d3207aac4c76e95'
  name 'Synergy'
  homepage 'https://symless.com/synergy'

  app 'Synergy.app'
end
