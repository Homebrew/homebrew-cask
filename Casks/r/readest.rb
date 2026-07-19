cask "readest" do
  arch arm: "aarch64", intel: "amd64"

  version "0.11.20"

  url_end = on_system_conditional linux: "#{arch}.AppImage", macos: "universal.dmg"

  url "https://github.com/readest/readest/releases/download/v#{version}/Readest_#{version}_#{url_end}",
      verified: "github.com/readest/readest/"
  name "Readest"
  desc "Ebook reader"
  homepage "https://readest.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    sha256 "c72b822e5bfe6635cebe4cc3f58876acfe04c2c44b22882bb3827940313e7d8c"

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
    sha256 arm64_linux:  "0c213928dd6a1ab0c8ccf60d43cb65e581c3ae7c1215134a51b2e2c8c216cc62",
           x86_64_linux: "7a99229d2551034644e37246c399b1402bf868fca0af8dd31249725d9f13aa6b"

    app_image "Readest_#{version}_#{arch}.AppImage", target: "Readest.AppImage"
  end
end
