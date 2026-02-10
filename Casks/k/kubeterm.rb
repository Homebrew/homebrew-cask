cask "kubeterm" do
  version "2.0.0"
  sha256 "5f17ac7114cab4bcfc61f04a49b63a119a2de7f1b8c93cc373d53cadce5184fd"

  url "https://github.com/kbterm/kubeterm/releases/download/v#{version}/Kubeterm-v#{version}-universal.dmg",
      verified: "github.com/kbterm/kubeterm/"
  name "Kubeterm"
  desc "Kubernetes graphical management tool"
  homepage "https://www.kubeterm.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "kubeterm.app"

  zap trash: [
    "~/Library/Application Support/com.kubeterm",
    "~/Library/Caches/com.kubeterm",
    "~/Library/Logs/com.kubeterm",
    "~/Library/Preferences/com.kubeterm.plist",
    "~/Library/Saved Application State/com.kubeterm.savedState",
  ]
end
