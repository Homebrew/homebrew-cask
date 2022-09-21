cask "rstudio" do
  version "2022.07.2,576"
  sha256 "35028d02d3f51d4599998c6d95816277acfce0dc63f80e09c3374218b83898de"

  url "https://download1.rstudio.org/desktop/macos/RStudio-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "download1.rstudio.org/"
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

  conflicts_with cask: "homebrew/cask-versions/rstudio-preview"
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
