cask "openmsx-emulator" do
  arch arm: "aarch64", intel: "x86_64"

  version "21.0"
  sha256 arm:   "f211e299ff039658dd8e943b775bb6b5e111a064caa78420e9d2345f2d116e51",
         intel: "dba74cb02b431ff6255a209887f65af32d6bb165afbb7815931b40915f589ba6"

  url "https://github.com/openMSX/openMSX/releases/download/RELEASE_#{version.dots_to_underscores}/openmsx-#{version}-mac-#{arch}-bin.dmg",
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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "openMSX.app"

  zap trash: "~/.openMSX"
end
