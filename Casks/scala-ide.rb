cask :v1 => 'scala-ide' do
  version '3.0.3'
  sha256 '74c0ed0a2ca9d5b7cad39142d436bf88db55e75f85f885c74a4b8a164e814ee1'

  url "http://downloads.typesafe.com/scalaide-pack/#{version}.vfinal-210-20140327/scala-SDK-#{version}-2.10-macosx.cocoa.x86_64.zip"
  homepage 'http://scala-ide.org/'
  license :unknown    # todo: improve this machine-generated value

  # Renamed for clarity: app name is inconsistent with its branding.
  # Also renamed to avoid conflict with other eclipse Casks.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/2731
  app 'eclipse/Eclipse.app', :target => 'Scala IDE.app'
end
