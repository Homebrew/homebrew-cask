cask "rstudio" do
  version "2022.02.2,485"
  sha256 "cda82e98937f39760deacaf56f03edb8e5f40f0702358a814c66880ec88e8507"

  url "https://rstudio-desktop.s3.amazonaws.com/desktop/macos/RStudio-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "rstudio-desktop.s3.amazonaws.com/"
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
