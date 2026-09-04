cask "joplin" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "#{arch}.DMG", linux: ".AppImage"

  version "3.6.16"
  sha256 arm:          "0aa77a277bc2040aae73ce1f77c6eca5e52d6d21f8e83cfbc206916b600bfb4e",
         intel:        "6a2fef367384e5ee54b89471e68a860973de6f01444d20da3b16f3dccdf63f1a",
         x86_64_linux: "c27f2a855b6aa3b434c62867524e5321e53037f65dfd00c962eabeb499b2d742"

  on_macos do
    depends_on macos: :monterey

    app "Joplin.app"

    zap trash: [
      "~/Library/Application Support/Joplin",
      "~/Library/Preferences/net.cozic.joplin-desktop.helper.plist",
      "~/Library/Preferences/net.cozic.joplin-desktop.plist",
      "~/Library/Saved Application State/net.cozic.joplin-desktop.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Joplin-#{version}.AppImage", target: "Joplin.AppImage"

    zap trash: [
      "~/.config/joplin-desktop",
      "~/.joplin",
    ]
  end

  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}#{url_end}"
  name "Joplin"
  desc "Note taking and to-do application with synchronisation capabilities"
  homepage "https://joplinapp.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
