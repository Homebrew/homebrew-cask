cask "curio" do
  version "22,22102"
  sha256 "1e4fc3def7251ed79078b83ad2f0f6235bf5a2f9ad8d6e9de6753f748293e9f9"

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
