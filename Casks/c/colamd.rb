cask "colamd" do
  arch arm: "arm64", intel: "x64"

  version "1.9.0"
  sha256 arm:   "fb725fc359b6dc7546583823cdb2f7db276a2e98d6d7178f24a0aaa07d7d86c8",
         intel: "5709152f0a3e220ebdf4ef2b5329e205096b750e573106c0037d70ac37c4e715"

  url "https://github.com/marswaveai/ColaMD/releases/download/v#{version}/ColaMD-#{version}-#{arch}-mac.zip"
  name "ColaMD"
  desc "Markdown editor with real-time sync for AI agents"
  homepage "https://github.com/marswaveai/ColaMD"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "ColaMD.app"

  zap trash: [
    "~/Library/Application Support/colamd",
    "~/Library/Preferences/ai.marswave.colamd.plist",
  ]
end
