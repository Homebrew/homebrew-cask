cask "starnet2" do
  arch arm: "arm64", intel: "x64"
  runtime = on_arch_conditional arm: "COREML", intel: "ORT"

  version "2.5.4-0214"
  sha256 arm:   "95d318794dac837fcfc21cb87bd7fe55155da515fdaadac4bc680d5f95caaad5",
         intel: "81320096875b6814fa565fe42f7c0f99fa288414fe86a1fb710fb768d0d577e4"

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
