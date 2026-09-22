cask "readest" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "0.12.10"
  sha256 arm:          "456bb4fb1569062c84838d1b4cb3eb0db19823eb039efec1eb9c99488a59b47b",
         intel:        "456bb4fb1569062c84838d1b4cb3eb0db19823eb039efec1eb9c99488a59b47b",
         arm64_linux:  "3b3983f12f859cfcb9a2fade8b26571de66fa49045dcf7f661ec729079abb886",
         x86_64_linux: "4f881065561ae4c21ea7bbbb37b37c52a4f4147627e00af6eaf935c06830ba1f"

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
