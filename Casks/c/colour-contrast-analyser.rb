cask "colour-contrast-analyser" do
  os macos: "CCA", linux: "Colour-Contrast-Analyser-Setup"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.5.5"

  on_macos do
    sha256 "d0e0922642a05149dd95f57e5b8814049149e94a0c7ea89fc9d56dfb60a813d9"

    depends_on macos: :big_sur

    app "Colour Contrast Analyser.app"

    zap trash: [
      "~/Library/Preferences/com.electron.cca.plist",
      "~/Library/Saved Application State/com.electron.cca.savedState",
    ]
  end
  on_linux do
    sha256 "88264e94c770515469ca2a669645643b898fd1d43fa293a200efd5309ea0ff63"

    depends_on arch: :x86_64

    app_image "Colour-Contrast-Analyser-Setup-#{version}.AppImage", target: "Colour Contrast Analyser.AppImage"
  end

  url "https://github.com/ThePacielloGroup/CCAe/releases/download/v#{version}/#{os}-#{version}.#{url_end}"
  name "Colour Contrast Analyser"
  desc "Colour contrast checker"
  homepage "https://www.tpgi.com/color-contrast-checker/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
