cask "preform" do
  version "3.44.0,471_87901"
  sha256 "ddd691bae02d363661aab86e7773681fb7b20748980ab0b7d1b754f33bbeeaf6"

  url "https://downloads.formlabs.com/PreForm/Release/#{version.csv.first}/PreForm_mac_#{version.csv.first}_release_releaser_#{version.csv.second}.dmg"
  name "PreForm"
  desc "3D printing setup, management, and monitoring"
  homepage "https://formlabs.com/tools/preform/"

  livecheck do
    url "https://formlabs.com/download-preform-mac/"
    regex(%r{/PreForm[._-]mac[._-]v?(\d+(?:\.\d+)+)[._-]release[._-]releaser[._-](\d+(?:[._-]\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :high_sierra"

  app "PreForm.app"

  zap trash: [
    "~/Library/Preferences/com.formlabs.PreForm.plist",
    "~/Library/Saved Application State/com.formlabs.PreForm.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
