cask "lemonlime" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.6.1,6.9.3"
  sha256 arm:   "1fd8dacb6c15400edeba9f1f344f8d42bcb42faf5d27e82a2198c70cbe96aede",
         intel: "233f167e68b80ced3552c3caaa2ede49f48a738158b1b51bdeb46af4e5d0e15d"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

  url "https://github.com/Project-LemonLime/Project_LemonLime/releases/download/#{version.csv.first}/lemon-Qt#{version.csv.second}-Release-#{arch}.dmg"
  name "lemonlime"
  desc "Tiny judging environment for OI contest based on Lemon + LemonPlus"
  homepage "https://github.com/Project-LemonLime/Project_LemonLime"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+[a-z]?)/lemon(?:[._-]Qt(\d+(?:\.\d+)+))?(?:[._-]Release)?(?:[._-]#{arch})?\.dmg$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        match[2] ? "#{match[1]},#{match[2]}" : match[1]
      end
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "lemon.app"

  zap trash: [
    "~/Documents/Project_LemonLime",
    "~/Library/Preferences/com.github.lemonlime.plist",
    "~/Library/Preferences/com.lemonlime.lemon.plist",
    "~/Library/Saved Application State/com.github.lemonlime.savedState",
  ]
end
