cask "scidvsmac" do
  version "4.23"
  sha256 "276d10bddc9d53fdcaf4d9f4a1d92aec469d450ac03c7a75a2a48841c5d44464"

  url "https://downloads.sourceforge.net/scidvspc/ScidvsMac-#{version}.x64.dmg"
  name "Scid vs. Mac"
  desc "Chess toolkit"
  homepage "https://scidvspc.sourceforge.net/"

  livecheck do
    url :homepage
    regex(/ScidvsMac-(\d+(?:\.\d+)*)\.x64\.dmg/i)
  end

  app "ScidvsMac.app"
end
