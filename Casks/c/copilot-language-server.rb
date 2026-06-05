cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.502.0"
  sha256 arm:          "6d2a39f74c977232c034a64bdb83fe782b50cafd63f84d8c0b551ba884a3f72f",
         intel:        "deac5005468f59d79c3b800ea26fc53d2eba9798eba67dde7dece54382e860c6",
         arm64_linux:  "a935c79a493c975c14f7d100d860ed018d4d8fda2671f8aa49fab1370fd459a8",
         x86_64_linux: "91afd15558b17650eeb339b2cb247676c87ccb5c938af741f3d28eb090e51ac0"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
