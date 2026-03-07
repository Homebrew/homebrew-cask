cask "better-terminal" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "e6db6400929263635c894c4a6478cd7743fb6e519da3e50bbd3fdee2789667a0",
         intel: "1441ef62339a6ae10620beb757d80af862332bc1f4f623b6bbfc549adca3afb9"

  url "https://github.com/alvin-reyes/better-agentic-ide/releases/download/v#{version}/Better.Terminal_#{version}_#{arch}.dmg"
  name "Better Terminal"
  name "ADE"
  desc "Agentic development environment with built-in AI agent support"
  homepage "https://github.com/alvin-reyes/better-agentic-ide"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Better Terminal.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Better Terminal.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.betterterminal.dev.plist",
    "~/Library/Saved Application State/com.betterterminal.dev.savedState",
  ]
end
