cask "rstudio" do
  version "2023.06.1,524"
  sha256 "184804ea11396380bfab3f2caf27555dc5e71459d9c755da77b575412e1409ff"

  url "https://download1.rstudio.org/electron/macos/RStudio-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "download1.rstudio.org/electron/macos/"
  name "RStudio"
  desc "Data science software focusing on R and Python"
  homepage "https://www.rstudio.com/"

  livecheck do
    url "https://www.rstudio.com/products/rstudio/download/"
    strategy :page_match do |page|
      match = page.match(/RStudio-(\d+(?:\.\d+)+)-(\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"

  caveats <<~EOS
    #{token} depends on R. The R Project provides official binaries:

      brew install --cask r

    Alternatively, the Homebrew-compiled version of R omits the GUI app:

      brew install r
  EOS
end
