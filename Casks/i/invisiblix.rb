cask "invisiblix" do
  version "3.2"
  sha256 "528328a0e7c3f0a72e763ea766324d491dfe20d6f18a2882eefda1a5a2c4d68e"

  url "https://downloads.sourceforge.net/invisiblix/invisibliX-#{version}.zip",
      verified: "sourceforge.net/invisiblix/"
  name "invisibliX"
  desc "Allows viewing and manipulation of hidden files in Finder"
  homepage "https://invisiblix.read-write.fr/"

  deprecate! date: "2024-07-17", because: :unmaintained

  app "invisibliX.app"

  caveats do
    requires_rosetta
  end
end
