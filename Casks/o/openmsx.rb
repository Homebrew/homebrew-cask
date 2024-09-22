cask "openmsx" do
  arch arm: "aarch64", intel: "x86_64"

  version "20.0"
  sha256 arm:   "bba6437e047cc9874ce6e7a3d00ff971168fef346646b66ec223aebf2227fad8",
         intel: "bde52158dbbe6fc1f1c9e9bcecd9ff674ff39614c9624dd4f690ac4f4ff5b173"

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

  app "openMSX.app"

  zap trash: "~/.openMSX"
end
