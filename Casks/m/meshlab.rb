cask "meshlab" do
  arch arm:   on_system_conditional(macos: "arm64", linux: "aarch64"),
       intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2025.07"
  sha256 arm:          "9a29ff3dbc0bef74fdee0e47eb8201be2509b45c965ca1f1abdf49c1ea48dac0",
         intel:        "49704f0b12cc524efa31c114f3a5557fe65aa076dc1217fa4716461a503609f7",
         arm64_linux:  "517313c3bcb0fec5261e77113055d727797b1e8635186830e388df6a36b67177",
         x86_64_linux: "c9f8f439a765e04333072c63ba5d7fb099da89d00f7da82a2c54e2472375574e"

  on_macos do
    app "MeshLab#{version}.app"

    postflight_steps do
      # workaround for bug which breaks the app on case-sensitive filesystems
      unless_path_exists "{{appdir}}/MeshLab#{version}.app/Contents/MacOS/MeshLab" do
        symlink "meshlab", "MeshLab#{version}.app/Contents/MacOS/MeshLab",
                source_base: :relative, target_base: :appdir
      end
    end

    uninstall quit: "com.vcg.meshlab"

    zap trash: [
      "~/Library/Application Support/VCG/MeshLab_64bit_fp",
      "~/Library/Preferences/com.vcg.MeshLab_64bit_fp.plist",
      "~/Library/Saved Application State/com.vcg.meshlab.savedState",
    ]
  end
  on_linux do
    app_image "MeshLab#{version}-linux_#{arch}.AppImage", target: "MeshLab.AppImage"

    zap trash: [
      "~/.config/VCG/MeshLab_64bit_fp.conf",
      "~/.local/share/VCG/MeshLab_64bit_fp",
    ]
  end

  url "https://github.com/cnr-isti-vclab/meshlab/releases/download/MeshLab-#{version}/MeshLab#{version}-#{os}_#{arch}.#{url_end}"
  name "MeshLab"
  desc "Mesh processing system"
  homepage "https://www.meshlab.net/"

  livecheck do
    url :url
    regex(/^Meshlab[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
