cask "rstudio" do
  version "2026.10.0,233"
  sha256 "564eec55a1b9e8048e4af06f32b1c621faa46a256bbf4c0a7ec5c3a25321a41c"

  url "https://download1.rstudio.org/electron/macos/RStudio-#{version.csv.first}-#{version.csv.second}.dmg"
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
