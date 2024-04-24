cask "cloud-toys" do
  arch arm: "darwin-arm64", intel: "darwin"

  version "1.0.1"
  sha256 arm:   "fc0206b97b11eec29016a3fffbb4324b83bded04837ae68d487585340905c4ba",
         intel: "fc0206b97b11eec29016a3fffbb4324b83bded04837ae68d487585340905c4ba"

  url "https://github.com/distinction-dev/cloudtoys/releases/download/v1.1.0/CloudToys-1.1.0.dmg"
  name "CloudToys"
  desc "Chasing Clouds"
  homepage "https://github.com/distinction-dev/cloudtoys/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "CloudToys.app"

  uninstall launchctl: "app.cloudtoys.www",
            quit:      "app.cloudtoys.www"

  zap trash: [
    "~/.cloudtoys",
    "~/Library/Application Support/cloudtoys",
    "~/Library/Preferences/app.cloudtoys.www.plist",
    "~/Library/Saved Application State/app.cloudtoys.www.savedState",
  ]
end
