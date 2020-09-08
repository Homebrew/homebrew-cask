cask "meshlab" do
  version "2020.09"
  sha256 "9046a4f9b45d24d004fa302370ca9a7bab027b2927400d9a60fbdbb4a0fb20c6"

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
