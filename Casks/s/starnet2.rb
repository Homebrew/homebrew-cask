cask "starnet2" do
  version "2.5.4-0214"

  on_arm do
    sha256 "95d318794dac837fcfc21cb87bd7fe55155da515fdaadac4bc680d5f95caaad5"

    url "https://download.starnetastro.com/StarNet2_macos-arm64_#{version}_COREML_arm64.pkg"

    pkg "StarNet2_macos-arm64_#{version}_COREML_arm64.pkg"
  end
  on_intel do
    sha256 "81320096875b6814fa565fe42f7c0f99fa288414fe86a1fb710fb768d0d577e4"

    url "https://download.starnetastro.com/StarNet2_macos-x64_#{version}_ORT_x64.pkg"

    pkg "StarNet2_macos-x64_#{version}_ORT_x64.pkg"
  end

  name "starnet2"
  desc "Removes stars from astrophotography images using ML models"
  homepage "https://starnetastro.com/"

  livecheck do
    url "https://starnetastro.com/cli-tools/starnet/"
    regex(/StarNet2_macos-arm64_(\d+(?:\.\d+)*-\d+)_COREML_arm64\.pkg/i)
  end

  depends_on :macos

  uninstall pkgutil: "com.starnetastro.starnet2.cli"

  # No zap stanza required

  caveats do
    files_in_usr_local
  end
end
