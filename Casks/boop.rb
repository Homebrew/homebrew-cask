cask "boop" do
  version "1.3.0"
  sha256 "f976d6dfdd3758053dd449fd5138fa7d9375de8e192bab41e49669ce5a89ede9"

  # github.com/IvanMathy/Boop was verified as official when first introduced to the cask
  url "https://github.com/IvanMathy/Boop/releases/download/#{version}/Boop.zip"
  appcast "https://github.com/IvanMathy/Boop/releases.atom"
  name "Boop"
  desc "Scriptable scratchpad for developers"
  homepage "https://boop.okat.best/"

  depends_on macos: ">= :mojave"

  app "Boop.app"

  zap trash: [
    "~/Library/Application Scripts/com.okatbest.boop",
    "~/Library/Containers/com.okatbest.boop",
  ]
end
