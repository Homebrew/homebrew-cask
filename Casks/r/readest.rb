cask "readest" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "0.12.12"
  sha256 arm:          "e6ea4dddaeed113eaa72e027b6b29c1a47846896a88727b343f6d8551937bd33",
         intel:        "e6ea4dddaeed113eaa72e027b6b29c1a47846896a88727b343f6d8551937bd33",
         arm64_linux:  "5a5ea78f787edbf227e7fe0969ff0f7cd82e80f9106759454fa6e52ff623bade",
         x86_64_linux: "50c8a37053025e4a2a52c1620439147f8104fdd19c396116bf5d2ee632abaeee"

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
