cask "starnet2" do
  arch arm: "arm64", intel: "x64"
  runtime = on_arch_conditional arm: "COREML", intel: "ORT"

  version "2.6.2-0241"
  sha256 arm:   "596f69c25dbf1601e37d62cd36e309ee0365890edd24e012bb4d006110b3d0de",
         intel: "3abc9294c7b26cc05e9799ec5d286f53279b50276f929821a3e62b820cc3cd60"

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
