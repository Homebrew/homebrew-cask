cask 'freesmug-chromium' do
  version '51.0.2704.103'
  sha256 'f2369ed022948eb00cc6e868a9d5380ab4b83dca9f5cc8d45c17da1b8210717f'

  # sourceforge.net/sourceforge/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '27191b0ce01d219bddc365202af31ae938d23f731717115510c1e1ec537cdb4c'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
