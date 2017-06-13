cask 'scala-ide' do
  version '4.6.1,2.12:20170609'
  sha256 'fb0868c0ce8559964d5b316d71f15681feccb13ab6b230928c789c562afa7b5c'

  # downloads.typesafe.com/scalaide-pack was verified as official when first introduced to the cask
  url "https://downloads.typesafe.com/scalaide-pack/#{version.before_comma}-vfinal-neon-#{version.before_colon.after_comma.no_dots}-#{version.after_colon}/scala-SDK-#{version.before_comma}-vfinal-#{version.before_colon.after_comma}-macosx.cocoa.x86_64.zip"
  name 'Scala IDE'
  homepage 'http://scala-ide.org/'

  # Renamed for clarity: app name is inconsistent with its branding.
  # Also renamed to avoid conflict with other eclipse Casks.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/2731
  app 'eclipse.app', target: 'Scala IDE.app'
end
