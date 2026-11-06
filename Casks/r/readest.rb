cask "readest" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "0.12.20"
  sha256 arm:          "9c70e84c963a16d6c90f2d5298d3c85ad293aa419c362f524d258c6249a63bda",
         intel:        "9c70e84c963a16d6c90f2d5298d3c85ad293aa419c362f524d258c6249a63bda",
         arm64_linux:  "52092039b62ddf4e86c9b07f9bc52913784f286a4cbc0e28a79016c9cd4a21ec",
         x86_64_linux: "6c0dc3af96f989006b10d9680cd1ee928b3ee577af6befdab4ae18cff083b262"

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

    zap trash: [
      "~/.cache/AppImage-Cache/com.bilingify.readest",
      "~/.cache/com.bilingify.readest",
      "~/.local/share/com.bilingify.readest",
    ]
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
