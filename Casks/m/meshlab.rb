cask "meshlab" do
  version "2023.12"
  sha256 "03e722dd4b7d9241d5d203bc1d15854ac3d122dbddee1835f0cdc65c537d53a9"

  url "https://github.com/cnr-isti-vclab/meshlab/releases/download/MeshLab-#{version}/MeshLab#{version}-macos.dmg",
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

  caveats do
    requires_rosetta
  end
end
