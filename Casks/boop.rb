cask "boop" do
  version "1.3.0"
  sha256 "f976d6dfdd3758053dd449fd5138fa7d9375de8e192bab41e49669ce5a89ede9"

  url "https://github.com/IvanMathy/Boop/releases/download/#{version}/Boop.zip",
      verified: "github.com/IvanMathy/Boop/"
  name "Boop"
  desc "Scriptable scratchpad for developers"
  homepage "https://boop.okat.best/"

  livecheck do
    url "https://boop.okat.best/version.json"
    strategy :page_match do |page|
      JSON.parse(page)["standalone"]["version"]
    end
  end

  depends_on macos: ">= :mojave"

  app "Boop.app"

  zap trash: [
    "~/Library/Application Scripts/com.okatbest.boop",
    "~/Library/Containers/com.okatbest.boop",
  ]
end
