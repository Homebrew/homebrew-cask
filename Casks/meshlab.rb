cask "meshlab" do
  version "2021.05"
  sha256 "2696f00573666853d3ef9ed7d3b42d39b91431ca8f45e6997dd288d29f8b8218"

  url "https://github.com/cnr-isti-vclab/meshlab/releases/download/Meshlab-#{version}/MeshLab#{version}-macos.dmg",
      verified: "github.com/cnr-isti-vclab/meshlab/"
  name "MeshLab"
  desc "Open-source mesh processing system"
  homepage "https://www.meshlab.net/"

  livecheck do
    url :url
    strategy :git
    regex(/^Meshlab-(\d+(?:\.\d+)*)$/i)
  end

  app "meshlab.app"

  postflight do
    # workaround for bug which breaks the app on case-sensitive filesystems
    Dir.chdir("#{appdir}/meshlab.app/Contents/MacOS") do
      File.symlink("meshlab", "MeshLab") unless File.exist? "MeshLab"
    end
  end
end
