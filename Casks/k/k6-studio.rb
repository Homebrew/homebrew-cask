cask "k6-studio" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.1"
  sha256  arm:   "c0a1260d8f9761383aec1644274a78e7160a00fc74470087d6aa61d2965bc493",
          intel: "f848a060ddedeabd4fad7d38a4e72cd77870adbe1b1a328682455c10872b123e"

  url "https://github.com/grafana/k6-studio/releases/download/v#{version}/k6.Studio-#{version}-#{arch}.dmg",
      verified: "github.com/grafana/k6-studio/"
  name "k6 Studio"
  desc "Application for generating k6 test scripts"
  homepage "https://grafana.com/docs/k6-studio"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "k6 Studio.app"
  binary "#{appdir}/k6 Studio.app/Contents/Resources/#{folder}/k6"

  zap trash: [
        "~/Library/Application Support/k6 Studio",
        "~/Library/Caches/com.electron.k6-studio",
        "~/Library/Caches/com.electron.k6-studio.ShipIt",
        "~/Library/HTTPStorages/com.electron.k6-studio",
        "~/Library/Logs/k6 Studio",
        "~/Library/Preferences/com.electron.k6-studio",
        "~/Library/Saved Application State/com.electron.k6-studio.savedState",
      ],
      rmdir: "~/Documents/k6-studio"
end
