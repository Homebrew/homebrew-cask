cask "ankermake" do
  version "0.9.44_6"
  sha256 "f201d782da18fb4b53de039a7731eee430bb6d75e4c7c6640d94c4a62e47dbe7"

  url "https://github.com/ankermake/AnkerMake-Slicer/releases/download/v#{version.split("_").first}/AnkerMake_V#{version}.zip",
      verified: "github.com/ankermake/AnkerMake-Slicer/"
  name "AnkerMake"
  desc "Slicer for AnkerMake 3D printers"
  homepage "https://www.ankermake.com/software"

  disable! date: "2025-05-26", because: :discontinued, replacement_cask: "eufymake-studio"

  depends_on macos: ">= :big_sur"
  container nested: "AnkerMake_V#{version}/AnkerMake_V#{version}.dmg"

  app "AnkerMake.app"

  zap trash: [
    "~/Library/Application Support/AnkerMake",
    "~/Library/Application Support/AnkerSlicer",
    "~/Library/Caches/AnkerMake",
    "~/Library/Caches/AnkerSlicer",
    "~/Library/Preferences/com.ankermake.AnkerMake_64bit_fp.plist",
    "~/Library/Preferences/com.ankerslicer.AnkerMake_64bit_fp.plist",
  ]

  caveats do
    requires_rosetta
  end
end
