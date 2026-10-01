cask "thoughtdag" do
  arch arm: "-arm64"

  version "0.5.11"
  sha256 arm:   "9ff113bfc6471fee15e7480dc186323e38e013744283014a9334983505e42297",
         intel: "6664003dd8e5c3f73e7612adc1082cecb77d3dbcf0b2c376b77b24b9015e2e9c"

  url "https://github.com/chenxiachan/thoughtdag/releases/download/v#{version}/ThoughtDAG-#{version}#{arch}.dmg"
  name "ThoughtDAG"
  desc "Visual workspace for editable LLM context graphs"
  homepage "https://chenxiachan.github.io/thoughtdag/"

  auto_updates true
  depends_on macos: :monterey

  app "ThoughtDAG.app"

  uninstall quit: "io.github.chenxiachan.thoughtdag"

  zap trash: [
    "~/Library/Application Support/thoughtdag-desktop",
    "~/Library/Caches/io.github.chenxiachan.thoughtdag",
    "~/Library/HTTPStorages/io.github.chenxiachan.thoughtdag",
    "~/Library/Logs/ThoughtDAG",
    "~/Library/Preferences/io.github.chenxiachan.thoughtdag.plist",
    "~/Library/Saved Application State/io.github.chenxiachan.thoughtdag.savedState",
  ]
end
