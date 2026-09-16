cask "kubeterm" do
  version "2.8.0"
  sha256 "52f1ac133e028b6da9005663ab38a72fd1cd62b1fb7af5c5e4fa047130c69649"

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
