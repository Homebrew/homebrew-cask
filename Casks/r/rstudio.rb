cask "rstudio" do
  version "2024.04.1,748"
  sha256 "a5eda69958e8c623d76545ac6d6356c0e6fbf564728304c72f0c730a5298173b"

  url "https://download1.rstudio.org/electron/macos/RStudio-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "download1.rstudio.org/electron/macos/"
  name "RStudio"
  desc "Data science software focusing on R and Python"
  homepage "https://posit.co/products/open-source/rstudio/"

  livecheck do
    url "https://posit.co/download/rstudio-desktop/"
    strategy :page_match do |page|
      match = page.match(/RStudio[._-]v?(\d+(?:\.\d+)+)[._-](\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  conflicts_with cask: "rstudio@daily"
  depends_on macos: ">= :monterey"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"

  caveats <<~EOS
    #{token} depends on R. The R Project provides official binaries:

      brew install --cask r

    Alternatively, the Homebrew-compiled version of R omits the GUI app:

      brew install r
  EOS
end
