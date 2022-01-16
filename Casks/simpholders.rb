cask "simpholders" do
  version "3.0.12,2366"
  sha256 "0f74633bd6bd9723063af0be550364882b93fbb5cd67bac6e2066083174e5f0d"

  url "https://simpholders.com/site/assets/files/#{version.csv.second}/simpholders_#{version.csv.first.dots_to_underscores}.dmg"
  name "SimPholders"
  homepage "https://simpholders.com/"

  livecheck do
    url "https://simpholders.com/latest/"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/(\d+)/simpholders_(\d+(?:_\d+)*).dmg}i)
      next if match.blank?

      "#{match[2].tr("_", ".")},#{match[1]}"
    end
  end

  depends_on macos: ">= :catalina"

  app "simpholders_#{version.csv.first.dots_to_underscores}.app", target: "SimPholders.app"
end
