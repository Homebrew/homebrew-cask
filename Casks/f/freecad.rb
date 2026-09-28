cask "freecad" do
  arch arm:   on_system_conditional(macos: "arm64", linux: "aarch64"),
       intel: "x86_64"
  os macos: "macOS", linux: "Linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.4"
  sha256 arm:          "071343b4abb70492b75c973f41eaf1d2528f9b9c7ea018d22a4f46ae14d27ac0",
         intel:        "e173d0dcf47a5166b59cbb33adccf54cd751eb9ceaa2c86486230d0d079648c1",
         arm64_linux:  "675d1a4295b2183e0e1d816a4b5557dcb63aeced4e60aaa28d6c3686f4c71dc9",
         x86_64_linux: "f6dc6ba676e5ac96a565ebc8d657232f94c6158e85b4352141bd1a46f6b43434"

  on_macos do
    app "FreeCAD.app"

    zap trash: [
      "~/Library/Application Support/FreeCAD",
      "~/Library/Caches/FreeCAD",
      "~/Library/Preferences/com.freecad.FreeCAD.plist",
      "~/Library/Preferences/FreeCAD",
    ]
  end
  on_linux do
    app_image "FreeCAD_#{version}-#{os}-#{arch}-py311.AppImage", target: "FreeCAD.AppImage"

    zap trash: [
      "~/.cache/FreeCAD",
      "~/.config/FreeCAD",
      "~/.local/share/FreeCAD",
    ]
  end

  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version}/FreeCAD_#{version}-#{os}-#{arch}-py311.#{url_end}"
  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  # Upstream uses GitHub releases to indicate that a version is released
  # (there's also sometimes a notable gap between when the release is created
  # and the homepage is updated), so the `GithubLatest` strategy is necessary.
  livecheck do
    url :url
    strategy :github_latest
  end
end
