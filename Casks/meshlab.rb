cask "meshlab" do
  version "2020.12"
  sha256 "f3ffe7132b37a44a8017a4bf5d52ff271c27fe3dd316245694e96bd30920ceae"

  url "https://github.com/cnr-isti-vclab/meshlab/releases/download/Meshlab-#{version}/MeshLab#{version}-macos.dmg",
      verified: "github.com/cnr-isti-vclab/meshlab/"
  name "MeshLab"
  desc "Open-source mesh processing system"
  homepage "https://www.meshlab.net/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/MeshLab(\d+(?:\.\d+)*)-macos\.dmg}i)
  end

  app "meshlab.app"

  postflight do
    # workaround for bug which breaks the app on case-sensitive filesystems
    Dir.chdir("#{appdir}/meshlab.app/Contents/MacOS") do
      File.symlink("meshlab", "MeshLab") unless File.exist? "MeshLab"
    end
  end
end
