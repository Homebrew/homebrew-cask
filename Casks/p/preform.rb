cask "preform" do
  version "3.65.1,672_166012"
  sha256 "8ca4df4de59cfbba9537d5820240dd662637603fa6742ae5f49e38f01bbe45b0"

  url "https://downloads.formlabs.com/PreForm/Release/#{version.csv.first}/PreForm_mac_#{version.csv.first}_release_releaser_#{version.csv.second}.dmg"
  name "PreForm"
  desc "3D printing setup, management, and monitoring"
  homepage "https://formlabs.com/tools/preform/"

  livecheck do
    url "https://updates.formlabs.com/v2/preform/release/mac/sparkle.xml"
    regex(%r{/PreForm[._-]mac[._-]v?(\d+(?:\.\d+)+)[._-]release[._-]releaser[._-](\d+(?:[._-]\d+)+)\.dmg}i)
    strategy :sparkle do |item, regex|
      item.url.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: :ventura

  app "PreForm.app"

  uninstall quit: "com.formlabs.PreForm"

  zap trash: [
    "~/Library/HTTPStorages/com.formlabs.PreForm",
    "~/Library/Preferences/com.formlabs.PreForm.plist",
    "~/Library/Saved Application State/com.formlabs.PreForm.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
