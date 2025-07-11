cask "retrospective" do
  version "6.4.0"
  sha256 "bdb99fa304fc76f61084249b54f6f163cd02b348ebadcf9d8830aea92c001635"

  url "https://resources.centeractive.com/software/#{version}/retrospective-#{version.dots_to_underscores}-macos-jre.dmg"
  name "Retrospective"
  desc "Log analysis tool"
  homepage "https://retrospective.centeractive.com/"

  livecheck do
    url "https://resources.centeractive.com/software/current/version.txt"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :big_sur"

  app "Retrospective.app"

  zap trash: "~/.Retrospective"

  caveats do
    requires_rosetta
  end
end
