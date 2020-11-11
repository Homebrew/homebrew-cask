cask "meshlab" do
  version "2020.09"
  sha256 "adb6b824d3af7f114246f473baaa10c3409798ad1d58431849efe9ef597f7490"

  # github.com/cnr-isti-vclab/meshlab/ was verified as official when first introduced to the cask
  url "https://github.com/cnr-isti-vclab/meshlab/releases/download/Meshlab-#{version}/MeshLab#{version}-macos.dmg"
  appcast "https://github.com/cnr-isti-vclab/meshlab/releases.atom"
  name "MeshLab"
  desc "Open-source mesh processing system"
  homepage "https://www.meshlab.net/"

  app "meshlab.app"

  postflight do
    # workaround for bug which breaks the app on case-sensitive filesystems
    Dir.chdir("#{appdir}/meshlab.app/Contents/MacOS") do
      File.symlink("meshlab", "MeshLab") unless File.exist? "MeshLab"
    end
  end
end
