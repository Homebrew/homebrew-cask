cask "rstudio@daily" do
  version "2026.09.0-daily-81"
  sha256 "f05cf3cf4f95474421cbd451b486d204d6de3e488a9a333757c3e39718e4d3ee"

  url "https://rstudio-ide-build.s3.amazonaws.com/electron/macos/RStudio-#{version}.dmg",
      verified: "rstudio-ide-build.s3.amazonaws.com/electron/macos/"
  name "RStudio Daily"
  desc "Data science software focusing on R and Python"
  homepage "https://dailies.rstudio.com/"

  livecheck do
    url "https://dailies.rstudio.com/rstudio/latest/index.json"
    strategy :json do |json|
      json.dig("products", "electron", "platforms", "macos", "version")
          &.tr("+", "-")
    end
  end

  conflicts_with cask: "rstudio"
  depends_on macos: :monterey

  app "RStudio.app"

  uninstall quit: "com.rstudio.desktop"

  zap trash: [
    "~/.rstudio-desktop",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rstudio.desktop.sfl*",
    "~/Library/Application Support/RStudio",
    "~/Library/Preferences/com.rstudio.desktop.plist",
  ]

  caveats <<~EOS
    #{token} depends on R. The R Project provides official binaries:

      brew install --cask r-app

    Alternatively, the Homebrew-compiled version of R omits the GUI app:

      brew install r
  EOS
end
