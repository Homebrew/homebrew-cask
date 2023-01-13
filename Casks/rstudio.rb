cask "rstudio" do
  version "2022.12.0,353"
  sha256 "fd4bebb5b030c81c0b0dbdd782960c564a0eb037e243435a8265fcbcb03563b5"

  url "https://download1.rstudio.org/electron/macos/RStudio-#{version.csv.first}-#{version.csv.second}.dmg",
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
