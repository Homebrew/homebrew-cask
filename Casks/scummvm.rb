cask "scummvm" do
  version "2.2.0"
  sha256 "044de5abed5e86a67a36b1793e6099b3175b612c4130a92bdc88acc73e980a5e"

  url "https://downloads.scummvm.org/frs/scummvm/#{version}/scummvm-#{version}-macosx.dmg"
  name "ScummVM"
  desc "Run classic graphical adventure and role-playing games"
  homepage "https://www.scummvm.org/"

  livecheck do
    url "https://www.scummvm.org/downloads/"
    strategy :page_match
    regex(%r{href=.*?/scummvm-(\d+(?:\.\d+)*)-macosx\.dmg}i)
  end

  app "ScummVM.app"
end
