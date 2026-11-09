cask "kubeterm" do
  version "2.8.3"
  sha256 "1514a51243ef3721f754c9d182d6bd4462bd55a0ab8504ddb6d5b1c0b8b3b25f"

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
