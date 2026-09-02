cask "caravel" do
    version "20260901.0.1"
    sha256 "12755bf20807a6fe967ba4092743fd71131463533329dfa72b5b4eb8a4b42471"

    url "https://github.com/yy36295238/caravel-releases/releases/download/v#{version}/Caravel_#{version}_universal.dmg"
    name "Caravel"
    desc "Local-first workbench for Claude Code, Codex, OpenCode and other CLI agents"
    homepage "https://github.com/yy36295238/caravel-releases"

    livecheck do
          url :url
          strategy :github_latest
    end

    depends_on macos: ":sonoma"

    app "Caravel.app"

    zap trash: [
          "~/Library/Application Support/Caravel",
          "~/Library/Caches/Caravel",
          "~/Library/Preferences/*.caravel*.plist",
        ]
end
