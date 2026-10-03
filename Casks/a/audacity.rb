cask "audacity" do
  arch arm: on_system_conditional(macos: "arm64", linux: "aarch64"), intel: "x86_64"
  os macos: "macOS", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "4.0.1"
  sha256 arm:          "278c8647b78c77af7f07dbd5e7d9bfc950bc14168047b65738716b61d12055ec",
         intel:        "9794b0b3a3a795bdc097b411a5776ba59dc451cb1524f58c9714c30cca2564be",
         arm64_linux:  "3abc517f26f00197eaac9c4e56b35dc53d8e933764b41077950e8526cd4aa075",
         x86_64_linux: "ca2f04f172124d1f18ac608749854c5d31f04ab266a758c348190c05d9b2087c"

  on_macos do
    app "Audacity #{version.major}.app"

    uninstall quit: "org.audacityteam.audacity#{version.major}"

    zap quit:  "org.audacityteam.audacity#{version.major}",
        trash: [
          "~/Library/Application Support/audacity",
          "~/Library/Caches/Audacity",
          "~/Library/Preferences/org.audacityteam.Audacity#{version.major}.plist",
          "~/Library/Preferences/org.audacityteam.audacity.plist",
          "~/Library/Saved Application State/org.audacityteam.audacity.savedState",
        ],
        rmdir: "~/Documents/Audacity#{version.major}"
  end
  on_linux do
    app_image "audacity-linux-#{version}-#{arch}.AppImage", target: "Audacity.AppImage"
  end

  url "https://github.com/audacity/audacity/releases/download/Audacity-#{version}/audacity-#{os}-#{version}-#{arch}.#{url_end}"
  name "Audacity"
  desc "Multi-track audio editor and recorder"
  homepage "https://www.audacityteam.org/"

  livecheck do
    url :url
    regex(/^Audacity[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
