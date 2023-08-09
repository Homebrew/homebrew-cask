cask "meshlab" do
  version "2022.02"
  sha256 "05ed6aa47f48ea5d2102c4952c0cfd5dfd6b9a56090d67d4c09d59ecb73214b5"

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
end
