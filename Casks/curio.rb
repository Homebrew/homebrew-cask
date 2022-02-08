cask "curio" do
  version "20,20009"
  sha256 "d1cb21d05345cc77dd31726ba0b3cac665e81974681959401f9c0d5d7cc21c20"

  url "https://www.zengobi.com/downloads/Curio#{version.csv.second.no_dots}.zip"
  name "Curio"
  desc "Note-taking and organizing app"
  homepage "https://zengobi.com/curio/"

  livecheck do
    url "https://www.zengobi.com/curio/download/"
    strategy :header_match do |headers|
      match = headers["location"].match(/Curio(\d+)\.zip/i)
      next if match.blank?

      "#{match[1][0..1]},#{match[1]}"
    end
  end

  depends_on macos: ">= :mojave"

  app "Curio.app"
end
