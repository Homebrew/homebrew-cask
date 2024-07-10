cask "time-lapse-assembler" do
  version "1.5.3"
  sha256 :no_check

  url "https://www.dayofthenewdan.com/TimeLapseAssembler.dmg"
  name "Time Lapse Assembler"
  desc "Tool to create movies from a sequence of images"
  homepage "https://www.dayofthenewdan.com/projects/time-lapse-assembler-1/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Time Lapse Assembler.app"

  caveats do
    requires_rosetta
  end
end
