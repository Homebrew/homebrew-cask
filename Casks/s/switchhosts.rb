cask "switchhosts" do
  arch arm: "aarch64", intel: "x64"

  version "5.0.1"
  sha256 arm:   "b36aac4b9e671265a35d2a7e88a1125d8575ec5581b365bd89d9846905833b72",
         intel: "f393316fd6387822035a09d7bd9a63790ab7cb419909ed8d884c253ee3094035"

  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version}/SwitchHosts-#{version}-mac-#{arch}.dmg",
      verified: "github.com/oldj/SwitchHosts/"
  name "SwitchHosts"
  desc "App to switch hosts"
  homepage "https://switchhosts.vercel.app/"

  livecheck do
    url :url
    regex(/^SwitchHosts[._-]v?(\d+(?:\.\d+)+)[._-]mac[._-]#{arch}\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on :macos

  app "SwitchHosts.app"

  zap trash: [
    "~/.SwitchHosts",
    "~/Library/Application Support/SwitchHosts",
    "~/Library/Preferences/SwitchHosts.plist",
    "~/Library/Saved Application State/SwitchHosts.savedState",
  ]
end
