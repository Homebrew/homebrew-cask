cask "requestly" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "26.6.29"
  sha256 arm:          "e8eebb6db725b079306973f74a453c2b707924d8a44c641b3a531eac83758bfc",
         intel:        "022f8aa3fa9de5425c57b21fa4095459769b653763e3a9af66b525322be7be5d",
         x86_64_linux: "4e71c4b7908218d6fbe4ab43133b836e4a9b6ba5792aa925d4990f7c74fa74f2"

  on_macos do
    depends_on macos: :monterey

    app "Requestly.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.requestly*.sfl*",
      "~/Library/Application Support/Requestly",
      "~/Library/Logs/Requestly",
      "~/Library/Preferences/io.requestly.*.plist",
      "~/Library/Saved Application State/io.requestly.*.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Requestly-#{version}.AppImage", target: "Requestly.AppImage"

    zap trash: "~/.config/Requestly"
  end

  url "https://github.com/requestly/requestly-desktop-app/releases/download/v#{version}/Requestly-#{version}#{arch}.#{os}"
  name "Requestly"
  desc "Intercept and modify HTTP requests"
  homepage "https://requestly.com/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
