cask "firestormos" do
  version "6.4.13.63251"
  sha256 "989662f0d4ba19c0b9fc34a9fe0b246fe8af41636102d950138b74d8fa694733"

  url "https://downloads.firestormviewer.org/mac/Phoenix-FirestormOS-Releasex64_#{version.dots_to_underscores}_x86_64.dmg"
  name "Phoenix Firestorm viewer for OpenSim"
  desc "Viewer for accessing Virtual Worlds"
  homepage "https://www.firestormviewer.org/"

  livecheck do
    url "https://www.firestormviewer.org/mac-for-open-simulator/"
    strategy :page_match do |page|
      v = page[%r{href=.*?/Phoenix-FirestormOS-Releasex64_(\d+(?:_\d+)*)_x86_64\.dmg}i, 1]
      v.tr("_", ".")
    end
  end

  app "FirestormOS-Releasex64.app"

  caveats <<~EOS
    This version does not contain Havok engine (does not matter if you're not a content creator).
    This version is only needed if you visit OpenSim grids; should not be used for uploading mesh to Second Life.
    Most problems that crop up during updates can be resolved or fixed by performing a clean install:

      https://wiki.firestormviewer.org/fs_clean_install for instructions.
  EOS
end
