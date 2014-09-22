class ScalaIde < Cask
  version '3.0.3'
  sha256 '74c0ed0a2ca9d5b7cad39142d436bf88db55e75f85f885c74a4b8a164e814ee1'

  url 'http://downloads.typesafe.com/scalaide-pack/3.0.3.vfinal-210-20140327/scala-SDK-3.0.3-2.10-macosx.cocoa.x86_64.zip'
  homepage 'http://scala-ide.org/'

  app 'eclipse/Eclipse.app', :target => 'Scala IDE.app'
end
