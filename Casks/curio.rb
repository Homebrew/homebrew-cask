cask "curio" do
  version "21,21006"
  sha256 "e46f943ee66cbab7708c1eb30339539ccf8312c24f878f298ea0b678f52727b1"

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
