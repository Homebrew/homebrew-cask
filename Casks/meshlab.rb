cask "meshlab" do
  version "2020.12"
  sha256 "580581d720d7b611531389f419c550257585432c022e43465587be77da3984ff"

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
