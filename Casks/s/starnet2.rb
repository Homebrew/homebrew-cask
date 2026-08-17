cask "starnet2" do
  version "2.5.4-0214"
  sha256 "95d318794dac837fcfc21cb87bd7fe55155da515fdaadac4bc680d5f95caaad5"

  url "https://download.starnetastro.com/StarNet2_macos-arm64_#{version}_COREML_arm64.pkg"
  name "starnet2"
  desc "Removes stars from astrophotography images using ML models"
  homepage "https://starnetastro.com/"

  livecheck do
    url "https://starnetastro.com/cli-tools/starnet/"
    regex(/StarNet2_macos-arm64_(\d+(?:\.\d+)*-\d+)_COREML_arm64\.pkg/i)
  end

  depends_on :macos
  depends_on arch: :arm64

  pkg "StarNet2_macos-arm64_#{version}_COREML_arm64.pkg"

  uninstall pkgutil: "com.starnetastro.starnet2.cli"

  # No zap stanza required

  caveats do
    files_in_usr_local
  end
end
