cask "kubeterm" do
  version "2.8.1"
  sha256 "f9cb1a62fd305eef49acd5f4966d9a6c2e97dfac140dc94f73b6be5df1aef548"

  url "https://github.com/kbterm/kubeterm/releases/download/v#{version}/Kubeterm-v#{version}-universal.dmg"
  name "Kubeterm"
  desc "Kubernetes graphical management tool"
  homepage "https://www.kubeterm.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "kubeterm.app"

  zap trash: [
    "~/Library/Application Support/com.kubeterm",
    "~/Library/Caches/com.kubeterm",
    "~/Library/Logs/com.kubeterm",
    "~/Library/Preferences/com.kubeterm.plist",
    "~/Library/Saved Application State/com.kubeterm.savedState",
  ]
end
