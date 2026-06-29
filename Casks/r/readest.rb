cask "readest" do
  arch arm: "aarch64", intel: "amd64"

  version "0.11.17"

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
    sha256 "cf4e420e2192c69dc6dce8143d13337b38c98c64a630ced1a6c8db9835b056a7"

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
    sha256 arm64_linux:  "cc77f6c18533a8642dccae02bf2b2c5f95a917eea1fdb59a0e2b74580f839446",
           x86_64_linux: "496d1bf6254975cbbbe7639ed36824c17eb7e95c4142e53ca044b36e85aefbbe"

    app_image "Readest_#{version}_#{arch}.AppImage", target: "Readest.AppImage"
  end
end
