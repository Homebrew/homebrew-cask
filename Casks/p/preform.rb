cask "preform" do
  version "3.45.2,490_91680"
  sha256 "78983ea9e2df24e2dab64cff0e366826a29bd4929a0a9a12229cca3b2cb757af"

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
