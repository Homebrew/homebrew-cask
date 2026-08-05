cask "bazecor" do
  arch arm: "arm64", intel: "x64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.9.2"

  on_macos do
    sha256 arm:   "55699405c2e2572cacc48db2fe141a421b052b26b15ad5b9df3ba9be1ee9cad6",
           intel: "2a9b1377b7be417c14d1499d2e152e467dbbc26e0339fac14ff6f0cfa4b011ac"

    depends_on macos: :big_sur

    app "Bazecor.app"

    zap trash: [
      "~/Library/Application Support/BAZECOR",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.dygmalab.bazecor.sfl*",
      "~/Library/Logs/Bazecor",
      "~/Library/Preferences/com.dygmalab.bazecor.plist",
      "~/Library/Saved Application State/com.dygmalab.bazecor.savedState",
    ]
  end
  on_linux do
    sha256 "f5e9b54bbffed9c58962a3844a0195fe4247964f9aec039a87289b37734326ff"

    depends_on arch: :x86_64

    app_image "Bazecor-#{version}-#{arch}.AppImage", target: "Bazecor.AppImage"
  end

  url "https://github.com/Dygmalab/Bazecor/releases/download/v#{version}/Bazecor-#{version}-#{arch}.#{url_end}",
      verified: "github.com/Dygmalab/Bazecor/"
  name "Bazecor"
  desc "Graphical configurator for Dygma Raise keyboards"
  homepage "https://github.com/Dygmalab/Bazecor"

  livecheck do
    url :url
    strategy :github_latest
  end
end
