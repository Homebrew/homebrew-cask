cask 'scala-ide' do
  version '4.5.0,2.11:20161213'
  sha256 'acfd393b0c4d88049b470e5187acc75c3c95c586834ed58c74fc9e379eae927e'

  # downloads.typesafe.com/scalaide-pack was verified as official when first introduced to the cask
  url "https://downloads.typesafe.com/scalaide-pack/#{version.before_comma}-vfinal-neon-#{version.before_colon.after_comma.no_dots}-#{version.after_colon}/scala-SDK-#{version.before_comma}-vfinal-#{version.before_colon.after_comma}-macosx.cocoa.x86_64.zip"
  name 'Scala IDE'
  homepage 'http://scala-ide.org/'

  # Renamed for clarity: app name is inconsistent with its branding.
  # Also renamed to avoid conflict with other eclipse Casks.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/2731
  app 'eclipse.app', target: 'Scala IDE.app'
end
