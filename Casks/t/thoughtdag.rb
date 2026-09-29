cask "thoughtdag" do
  arch arm: "-arm64"

  version "0.5.4"
  sha256 arm:   "b2ea7fe172fb5616b83fbf29a26652b8ff0125715ad9508c3174671ed3488631",
         intel: "ca7b50f3caf244bb431dfc17329cbfb62fb628e74873088de8bfd6be1f7d27b9"

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
