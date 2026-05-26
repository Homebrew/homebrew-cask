cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.495.2"
  sha256 arm:          "5b508f85e95d723dd63f420c9b62f992a0653718d4b284b44d4e40bbfaf39804",
         intel:        "b2a80a212c7e29ed93ed33ea7be37f8c0b08b7b5da13a637359f4fbbdad1598d",
         arm64_linux:  "c8ce847ec78abb87351ea12c8c0538cf311628b6d4a1b7817f1dee5130428a14",
         x86_64_linux: "e00194aafe9bed664a6040d0b0f3d47ab63a12f785afdf9f166cf28a9157a676"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
