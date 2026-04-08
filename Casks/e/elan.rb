cask "elan" do
  arch arm: "_M1"

  version "7.1"
  sha256 arm:   "71106952d5a1d301c6f4f764a10e654d2581cc8922e8d451a0c091ecf000d99c",
         intel: "fa984b2feae02d8ac30807a543b146da475c43eb9fdf25836e0cee8fdb2caba5"

  url "https://www.mpi.nl/tools/elan/ELAN_#{version.dots_to_hyphens}#{arch}_mac.zip"
  name "ELAN"
  desc "Annotation tool for audio and video recordings"
  homepage "https://archive.mpi.nl/tla/elan"

  livecheck do
    url "https://archive.mpi.nl/tla/elan/download"
    regex(/href=.*?ELAN[._-]v?(\d+(?:-\d+)+)#{arch}[._-]mac\.zip/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      match[1].tr("-", ".")
    end
  end

  app "ELAN_#{version.dots_to_hyphens}#{arch}_mac/ELAN_#{version}.app"

  zap trash: [
    "~/Library/Preferences/ELAN",
    "~/Library/Preferences/nl.mpi.elan.plist",
  ]
end
