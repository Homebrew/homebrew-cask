cask "kubeterm" do
  version "2.5.0"
  sha256 "26265b6aa16df1618daa10a6985f72da202302ba1d727ebd17852744ce4165bd"

  url "https://github.com/kbterm/kubeterm/releases/download/v#{version}/Kubeterm-v#{version}-universal.dmg",
      verified: "github.com/kbterm/kubeterm/"
  name "Kubeterm"
  desc "Kubernetes graphical management tool"
  homepage "https://www.kubeterm.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "kubeterm.app"

  zap trash: [
    "~/Library/Application Support/com.kubeterm",
    "~/Library/Caches/com.kubeterm",
    "~/Library/Logs/com.kubeterm",
    "~/Library/Preferences/com.kubeterm.plist",
    "~/Library/Saved Application State/com.kubeterm.savedState",
  ]
end
