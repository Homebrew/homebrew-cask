cask "preform" do
  version "3.37.3,365_67139"
  sha256 "5c1c43f72f1b49e97a31ce3ae2d924d593b0d94e6bdd9b96d99701a83f283331"

  url "https://downloads.formlabs.com/PreForm/Release/#{version.csv.first}/PreForm_mac_#{version.csv.first}_release_releaser_#{version.csv.second}.dmg"
  name "PreForm"
  desc "3D printing setup, management, and monitoring"
  homepage "https://formlabs.com/tools/preform/"

  livecheck do
    url "https://formlabs.com/download-preform-mac/"
    regex(%r{/PreForm_mac_(\d+(?:\.\d+)+)_release_releaser_(\d+(?:[._-]\d+)+)\.dmg}i)
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
end
