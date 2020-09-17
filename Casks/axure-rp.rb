cask "axure-rp" do
  version "9.0.0.3716"
  sha256 "bf73cad5124d0713ae010843a224d21774ee1902318f387e0007e3da4041b879"

  # axure.cachefly.net/ was verified as official when first introduced to the cask
  url "https://axure.cachefly.net/AxureRP-Setup.dmg"
  appcast "https://www.axure.com/release-history"
  name "Axure RP"
  desc "Planning and prototyping tool for developers"
  homepage "https://www.axure.com/"

  app "Axure RP #{version.major}.app"

  zap trash: [
    "~/Library/Preferences/com.axure.AxureRP#{version.major}.plist",
    "~/Library/Saved Application State/com.axure.AxureRP#{version.major}.savedState",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.axure.axurerp#{version.major}.sfl*",
  ]
end
