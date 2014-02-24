class ScalaIde < Cask
  url 'http://downloads.typesafe.com/scalaide-pack/3.0.2.vfinal-210-20131028/scala-SDK-3.0.2-vfinal-2.10-macosx.cocoa.x86_64.zip'
  homepage 'http://scala-ide.org/'
  version '3.0.2'
  sha256 'ff18316efd94a7e074d472ba0edcbb954a81c3d4180812fb78906ed261e18962'
  link 'eclipse/Eclipse.app', :target => 'Scala IDE.app'
end
