cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.488.0"
  sha256 arm:          "9708e24494655c9685b9d891c1e087eb3eec3c09f1cbf3d56a27688a43df770b",
         intel:        "20109bce27ab206fbf9f88562bbe37189985a93952277ac8e62b5822fcc359aa",
         arm64_linux:  "aae783f9972d69f044122b657c8f3ebf05bffde13ecb1a22509f017b73cd6ac5",
         x86_64_linux: "f014c38c7e521e97abc674d844aef05bf50b5eb56e4c0226a004a022030a72ff"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
