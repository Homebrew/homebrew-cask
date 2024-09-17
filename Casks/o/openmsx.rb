cask "openmsx" do
  version "19.1"
  sha256 "e81a31cd19b1fdf029b08b55879fef6793cb0bbcbdc79e6e4cc8892f64d82d8b"

  url "https://github.com/openMSX/openMSX/releases/download/RELEASE_#{version.dots_to_underscores}/openmsx-#{version}-mac-x86_64-bin.dmg",
      verified: "github.com/openMSX/openMSX/"
  name "openMSX"
  desc "MSX emulator"
  homepage "https://openmsx.org/"

  livecheck do
    url :url
    regex(/^RELEASE[._-]v?(\d+(?:[._]\d+)+)$/i)
    strategy :git do |tags, regex|
      tags.filter_map { |tag| tag[regex, 1]&.tr("_", ".") }
    end
  end

  app "openMSX.app"

  zap trash: "~/.openMSX"

  caveats do
    requires_rosetta
  end
end
