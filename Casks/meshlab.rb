cask "meshlab" do
  version "2021.10"
  sha256 "84ce5706104012d50da8488f0cb09a70651b7e037c4dbe52e979d1ade18f6f91"

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
