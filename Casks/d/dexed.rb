cask "dexed" do
  version "0.9.6"
  sha256 "7a9481628a92b7e348857f18be3a24fe8b48d4a67d3a9d7fe290e37e915d2fc4"

  url "https://github.com/asb2m10/dexed/releases/download/v#{version}/dexed-#{version}-macos.zip",
      verified: "github.com/asb2m10/dexed/"
  name "Dexed"
  desc "DX7 FM synthesiser"
  homepage "https://asb2m10.github.io/dexed/"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "dexed-#{version}.mpkg"

  uninstall pkgutil: [
    "com.digitalsuburban.DexedAU",
    "com.digitalsuburban.DexedStandalone",
    "com.digitalsuburban.DexedVST3",
  ]
end
