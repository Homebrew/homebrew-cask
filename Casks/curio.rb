cask "curio" do
  version "19,19006"
  sha256 "e2ee57fbc298573e83da89f25b7c3f11aa71ddd6c1d76ad4d81d3b5782623141"

  url "https://www.zengobi.com/downloads/Curio#{version.csv.second.no_dots}.zip"
  name "Curio"
  desc "Note-taking and organizing app"
  homepage "https://zengobi.com/curio/"

  livecheck do
    url "https://www.zengobi.com/curio/download/"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/Curio(\d+)\.zip})
      next if match.blank?

      puts match

      "#{match[1][0..1]},#{match[1]}"
    end
  end

  depends_on macos: ">= :mojave"

  app "Curio.app"
end
