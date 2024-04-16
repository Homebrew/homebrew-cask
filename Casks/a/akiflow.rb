cask "akiflow" do
  version "2.41.107-9bd4a3ff"
  sha256 "f41815589336cb8ae97d25c27962df011c1c431817651beec459bc92cb4b3be2"

  url "https://download.akiflow.com/builds/Akiflow-#{version}-universal.dmg"
  name "Akiflow"
  desc "Time blocking platform to save 2 hours every day"
  homepage "https://akiflow.com/"

  livecheck do
    url "https://download.akiflow.com/builds/download"
    strategy :header_match 
  end

  depends_on macos: ">= :high_sierra"

  app "Akiflow.app"

  zap trash: [
    "~/Library/Application Support/Akiflow",
    "~/Library/Preferences/Akiflow",
    "~/Library/Preferences/com.akiflow.akiflow.plist",
    "~/Library/Saved Application State/com.akiflow.akiflow.savedState",
  ]
end
