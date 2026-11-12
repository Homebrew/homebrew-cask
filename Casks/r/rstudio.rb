cask "rstudio" do
  version "2026.11.0,203"
  sha256 "8af768450f9f38586bf48958d348b41ffc4f3d42c9d225cb6d4f2b8e8b986135"

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
  depends_on macos: :ventura

  app "RStudio.app"

  uninstall quit: "com.rstudio.desktop"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rstudio.desktop.sfl*",
        "~/Library/Application Support/RStudio",
        "~/Library/Preferences/com.rstudio.desktop.plist",
      ],
      rmdir: "~/.rstudio-desktop"

  caveats <<~EOS
    #{token} depends on R. The R Project provides official binaries:

      brew install --cask r-app

    Alternatively, the Homebrew-compiled version of R omits the GUI app:

      brew install r
  EOS
end
