cask "epic" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "140.0.7339.133,139"
    sha256 "4eb9346a5509bfba0cb94e6a72747afe98d90852f48d2dc4abb3a1120a09393a"
  end
  on_intel do
    version "140.0.7339.133,150"
    sha256 "be025fb94485b1baacc82923ef451be5f08089a3d606bbf2cd1038530b21e8ac"
  end

  url "https://cdn.epicbrowser.com/mac#{version.csv.second || version.major}#{arch}/epic_#{version.csv.first}.dmg"
  name "Epic Privacy Browser"
  desc "Private, secure web browser"
  homepage "https://epicbrowser.com/"

  livecheck do
    url "https://epicbrowser.com/thank-you"
    regex(%r{href=.*?/mac(\d+)#{arch}/epic[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        major = match[1].split(".").first
        next match[1] if major == match[1]

        (match[0] == major) ? match[1] : "#{match[1]},#{match[0]}"
      end
    end
  end

  depends_on macos: ">= :big_sur"

  app "Epic.app"

  zap trash: [
    "~/Library/Application Support/HiddenReflex/Epic",
    "~/Library/Preferences/com.hiddenreflex.Epic.plist",
    "~/Library/Saved Application State/com.hiddenreflex.Epic.savedState",
  ]
end
