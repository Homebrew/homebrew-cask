cask "pangoterm" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.4"

  on_arm do
    sha256 "6d836a70e68e330354a5dbc10b779dd7e6bd025fae98e6a4ba5649520cbb20ff"
  end
  on_intel do
    sha256 "1784deddc99ed7ee868f54e29abb18181fd96e8ba264af0e6844130e3f733214"
  end

  url "https://github.com/fpaitoo/pangoterm-releases/releases/download/v#{version}/PangoTerm_#{version}_#{arch}.dmg"
  name "PangoTerm"
  desc "Modern cross-platform SSH client with SFTP, port forwarding, and terminal emulation"
  homepage "https://pangoterm.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "PangoTerm.app"

  zap trash: [
    "~/Library/Application Support/com.pangoterm.desktop",
    "~/Library/Caches/com.pangoterm.desktop",
    "~/Library/Saved Application State/com.pangoterm.desktop.savedState",
    "~/Library/WebKit/com.pangoterm.desktop",
  ]
end
