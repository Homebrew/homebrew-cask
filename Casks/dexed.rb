cask "dexed" do
  version "0.9.5"
  sha256 "4e2ba92331317aa2ce87194cdcc3eb6110b9b2fbbdb64355ada9bb9a7c56f0d5"

  # github.com/asb2m10/dexed/ was verified as official when first introduced to the cask
  url "https://github.com/asb2m10/dexed/releases/download/v#{version}/dexed-#{version}-osx.zip"
  appcast "https://github.com/asb2m10/dexed/releases.atom"
  name "Dexed"
  desc "DX7 FM synthesizer"
  homepage "https://asb2m10.github.io/dexed/"

  pkg "dexed-#{version}.mpkg"

  uninstall pkgutil: [
    "com.digitalsuburban.DexedStandalone",
    "com.digitalsuburban.DexedVST3",
    "com.digitalsuburban.DexedAU",
  ]
end
