cask "meshlab" do
  arch arm: "arm64", intel: "x86_64"

  version "2025.07"
  sha256 arm:   "9a29ff3dbc0bef74fdee0e47eb8201be2509b45c965ca1f1abdf49c1ea48dac0",
         intel: "49704f0b12cc524efa31c114f3a5557fe65aa076dc1217fa4716461a503609f7"

  url "https://github.com/cnr-isti-vclab/meshlab/releases/download/MeshLab-#{version}/MeshLab#{version}-macos_#{arch}.dmg",
      verified: "github.com/cnr-isti-vclab/meshlab/"
  name "MeshLab"
  desc "Mesh processing system"
  homepage "https://www.meshlab.net/"

  livecheck do
    url :url
    regex(/^Meshlab[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "MeshLab#{version}.app"

  postflight do
    # workaround for bug which breaks the app on case-sensitive filesystems
    Dir.chdir("#{appdir}/MeshLab#{version}.app/Contents/MacOS") do
      File.symlink("meshlab", "MeshLab") unless File.exist? "MeshLab"
    end
  end

  zap trash: [
    "~/Library/Application Support/VCG/MeshLab_64bit_fp",
    "~/Library/Preferences/com.vcg.MeshLab_64bit_fp.plist",
    "~/Library/Saved Application State/com.vcg.meshlab.savedState",
  ]
end
