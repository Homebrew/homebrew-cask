cask "readest" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "0.12.16"
  sha256 arm:          "493f8393b5f1e7d1cd26525f0737b2658cafc7efb0657d9102834c6bdd194f0f",
         intel:        "493f8393b5f1e7d1cd26525f0737b2658cafc7efb0657d9102834c6bdd194f0f",
         arm64_linux:  "531e2e89be866a0c157ce079edfc71ad672da87a5c0608db1ea8dbaa1d3face6",
         x86_64_linux: "83fbf17d29c443c777642482534a603bc338643731d926f7a30df19f5f02e584"

  on_macos do
    auto_updates true
    depends_on macos: :monterey

    app "Readest.app"

    zap trash: [
      "~/Library/Application Support/com.bilingify.readest",
      "~/Library/Caches/com.bilingify.readest",
      "~/Library/Caches/readest",
      "~/Library/Preferences/com.bilingify.readest.plist",
      "~/Library/WebKit/com.bilingify.readest",
      "~/Library/WebKit/readest",
    ]
  end
  on_linux do
    app_image "Readest_#{version}_#{arch}.AppImage", target: "Readest.AppImage"
  end

  url "https://github.com/readest/readest/releases/download/v#{version}/Readest_#{version}_#{os}"
  name "Readest"
  desc "Ebook reader"
  homepage "https://readest.com/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
