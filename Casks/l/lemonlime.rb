cask "lemonlime" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.6.2,6.9.3"
  sha256 arm:   "165c2f8268041f473c035493c3e5403c01e82ce22eb38fcfa3befa0017944ca1",
         intel: "4eeb11cf7c7a039959e5e30bf4f2a97522ed0ca70eceb2d4296039903f52059d"

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
