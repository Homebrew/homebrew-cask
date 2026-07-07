cask "readest" do
  arch arm: "aarch64", intel: "amd64"

  version "0.11.18"

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
    sha256 "227a47a3b54ea3a7e02381c718f141f8d8dcaac4006803851d27a9043e29e3e8"

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
    sha256 arm64_linux:  "f715e13503b54c7786d8bf6edd2932a3b2cbe8fe76f52f6afdd5261ed31a8f08",
           x86_64_linux: "538f2d8503f3d748964ac1f7c0cfbfe4115f82c10fa8c6f6a871428af562dabc"

    app_image "Readest_#{version}_#{arch}.AppImage", target: "Readest.AppImage"
  end
end
