cask "meshlab" do
  version "2022.02"
  sha256 "d581dcb113d8c46b66ba7753cd238441f422f3d21526a752e617842d2ca2e515"

  url "https://github.com/cnr-isti-vclab/meshlab/releases/download/Meshlab-#{version}/MeshLab#{version}-macos.dmg",
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
end
