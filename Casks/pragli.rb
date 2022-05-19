cask "pragli" do
  version "22.5.4"
  sha256 :no_check

  url "https://storage.googleapis.com/always-on-cdf01.appspot.com/dist/Pesto%20(Pragli).dmg",
      verified: "storage.googleapis.com/always-on-cdf01.appspot.com/"
  name "Pragli"
  desc "Virtual office for remote teams"
  homepage "https://pragli.com/"

  livecheck do
    url "https://storage.googleapis.com/always-on-cdf01.appspot.com/dist/latest-mac.yml"
    strategy :electron_builder
  end

  app "Pesto (Pragli).app"

  zap trash: [
    "~/Library/Application Support/Pragli",
    "~/Library/Logs/Pragli",
    "~/Library/Preferences/pragli.com.plist",
    "~/Library/Saved Application State/pragli.com.savedState",
  ]
end
