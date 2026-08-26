cask "rstudio" do
  version "2026.08.2,200"
  sha256 "4e7147d90bf5702b8b8d8dac5c3666b943f89a3997b787a5d7c3b8f5bb07b5d0"

  url "https://download1.rstudio.org/electron/macos/RStudio-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "download1.rstudio.org/electron/macos/"
  name "RStudio"
  desc "Data science software focusing on R and Python"
  homepage "https://posit.co/products/open-source/rstudio/"

  livecheck do
    url "https://www.rstudio.org/links/check_for_update?version=0.0.0&os=mac"
    regex(/update-version=v?(\d+(?:\.\d+)+)%2B(\d+)/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  conflicts_with cask: "rstudio@daily"
  depends_on macos: :monterey

  app "RStudio.app"

  uninstall quit: "com.rstudio.desktop"

  zap trash: "~/.rstudio-desktop"

  caveats <<~EOS
    #{token} depends on R. The R Project provides official binaries:

      brew install --cask r-app

    Alternatively, the Homebrew-compiled version of R omits the GUI app:

      brew install r
  EOS
end
