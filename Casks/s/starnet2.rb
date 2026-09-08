cask "starnet2" do
  arch arm: "arm64", intel: "x64"
  runtime = on_arch_conditional arm: "COREML", intel: "ORT"

  version "2.6.0-0231"
  sha256 arm:   "4189ba2ed9e8825b1acbac5826b40e73f19c921dfddbad72850ffe45881ab4e6",
         intel: "35389a94e0faf1eef6fb59d3f43c017c5ea199e464e0c4fffb9a533d3d80e8da"

  url "https://download.starnetastro.com/StarNet2_macos-#{arch}_#{version}_#{runtime}_#{arch}.pkg"
  name "starnet2"
  desc "Removes stars from astrophotography images using ML models"
  homepage "https://starnetastro.com/"

  livecheck do
    url "https://starnetastro.com/cli-tools/starnet/"
    regex(/StarNet2[._-]macos-#{arch}[._-]v?(\d+(?:\.\d+)*-\d+)[._-]#{runtime}/i)
  end

  depends_on :macos

  pkg "StarNet2_macos-#{arch}_#{version}_#{runtime}_#{arch}.pkg"

  uninstall pkgutil: "com.starnetastro.starnet2.cli"

  # No zap stanza required

  caveats do
    files_in_usr_local
  end
end
