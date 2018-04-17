cask 'scala-ide' do
  version '4.7.0,2.12:20170929'
  sha256 'b86a37066cb375615c2a9a61a0152b66a0b172b90e15a33c339f89d2516315f9'

  # downloads.typesafe.com/scalaide-pack was verified as official when first introduced to the cask
  url "https://downloads.typesafe.com/scalaide-pack/#{version.before_comma}-vfinal-oxygen-#{version.before_colon.after_comma.no_dots}-#{version.after_colon}/scala-SDK-#{version.before_comma}-vfinal-#{version.before_colon.after_comma}-macosx.cocoa.x86_64.zip"
  name 'Scala IDE'
  homepage 'http://scala-ide.org/'

  # Renamed for clarity: app name is inconsistent with its branding.
  # Also renamed to avoid conflict with other eclipse Casks.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/2731
  app 'eclipse.app', target: 'Scala IDE.app'
end
