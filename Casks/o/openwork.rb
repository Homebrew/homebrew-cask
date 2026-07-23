cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.40"
  sha256 arm:          "02bc79d8466f071a303f64f95fb4fcaa02c542e8482a7f90560e931e808d625d",
         intel:        "2f358a4bdf3c000fd3a3756a10feb1fd9ce35d03d0e7c1149901a24e2d45be27",
         arm64_linux:  "09973ce3229840318238de337c992025d468008ada779a5bcfe57c700f7672ca",
         x86_64_linux: "e574f287006f4ad67ed5aae2d912384f4c1dffcb67fdc61414766a22715fc054"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"

  url "https://github.com/different-ai/openwork/releases/download/v#{version}/openwork-#{os}-#{arch}-#{version}#{url_end}",
      verified: "github.com/different-ai/openwork/"
  name "OpenWork"
  desc "Unofficial desktop GUI for OpenCode"
  homepage "https://openworklabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

    app "OpenWork.app"

    uninstall quit: "com.differentai.openwork"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.differentai.openwork.sfl*",
      "~/Library/Application Support/com.differentai.openwork",
      "~/Library/Application Support/OpenWork",
      "~/Library/Caches/OpenWork",
      "~/Library/Preferences/com.differentai.openwork.plist",
      "~/Library/Preferences/com.differentai.openwork.ShipIt.plist",
    ]
  end

  on_linux do
    app_image "openwork-linux-#{arch}-#{version}.AppImage", target: "OpenWork.AppImage"
  end
end
