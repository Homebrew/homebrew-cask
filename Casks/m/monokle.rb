cask "monokle" do
  version "2.4.8"
  sha256 "43e45f9d67ffec7bcfc4c23ad1adaef6ef81fe4a8d1b95837d18b0ef39b9df84"

  url "https://github.com/kubeshop/monokle/releases/download/v#{version}/Monokle-mac-#{version}-universal.dmg"
  name "monokle"
  desc "IDE dedicated to high-quality Kubernetes YAML configurations"
  homepage "https://github.com/kubeshop/monokle"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Monokle.app"

  zap trash: [
    "~/Library/Application Support/monokle",
    "~/Library/Logs/monokle",
    "~/Library/Preferences/io.kubeshop.monokle.plist",
    "~/Library/Saved Application State/io.kubeshop.monokle.savedState",
  ]
end
