cask "boop" do
  version "1.2.1"
  sha256 "9a8aa41f8ffe62596572aa2c4effbccef6e686e3515932bd22713d1825b8f5d8"

  # github.com/IvanMathy/Boop was verified as official when first introduced to the cask
  url "https://github.com/IvanMathy/Boop/releases/download/#{version}/Boop.zip"
  appcast "https://github.com/IvanMathy/Boop/releases.atom"
  name "Boop"
  homepage "https://boop.okat.best/"

  depends_on macos: ">= :mojave"

  app "Boop.app"

  zap trash: [
    "~/Library/Application Scripts/com.okatbest.boop",
    "~/Library/Containers/com.okatbest.boop",
  ]
end
