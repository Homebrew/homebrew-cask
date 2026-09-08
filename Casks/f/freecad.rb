cask "freecad" do
  arch arm:   on_system_conditional(macos: "arm64", linux: "aarch64"),
       intel: "x86_64"
  os macos: "macOS", linux: "Linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.3"
  sha256 arm:          "f5c0ece7cd7c932466d6effadc0fc6e179b0538a9d9a6a77a6769eae3af2667c",
         intel:        "8434bd6ad32f597605d184e5b996f496e9cbc7e6d8ffb6db4dbd6e2ce6d1612b",
         arm64_linux:  "9a8f9f7f2802bb856f2bb70f53d536e2ae06569f4e6d718407803076104ff55e",
         x86_64_linux: "3a853eb69ee595f779f2255dbf80a765926981d8ff68903cefee4dfb03a8f5ef"

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
