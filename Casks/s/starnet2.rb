cask "starnet2" do
  arch arm: "arm64", intel: "x64"
  runtime = on_arch_conditional arm: "COREML", intel: "ORT"

  version "2.6.2-0242"
  sha256 arm:   "53a2167269a0560a5255444f7248d6524c4de1f3c28b3aa6a3721184081ce12a",
         intel: "3069b280bf8c4eb5ddc850b498c41c565fe2370ac77e00730c5b2fbfa566eb9e"

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
