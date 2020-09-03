cask "meshlab" do
  version "2020.09"
  sha256 "4136dc9b6ac20a12563105b2f821a7fdbeeede0d4b52d3ba1995f17276395d95"

  # github.com/cnr-isti-vclab/meshlab/ was verified as official when first introduced to the cask
  url "https://github.com/cnr-isti-vclab/meshlab/releases/download/Meshlab-#{version}/MeshLab#{version}-macos.dmg"
  appcast "https://github.com/cnr-isti-vclab/meshlab/releases.atom"
  name "MeshLab"
  homepage "https://www.meshlab.net/"

  app "meshlab.app"

  postflight do
    # workaround for bug which breaks the app on case-sensitive filesystems
    Dir.chdir("#{appdir}/meshlab.app/Contents/MacOS") do
      File.symlink("meshlab", "MeshLab") unless File.exist? "MeshLab"
    end
  end
end
