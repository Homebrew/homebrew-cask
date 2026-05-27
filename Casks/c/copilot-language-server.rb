cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.497.0"
  sha256 arm:          "2dc3f32f053b6d92cb6a5655593ebee9a5fd0629402fcb2df3013038379a1496",
         intel:        "cb7d6db25e1dba044ba4910fce283c549a8ad92f1039d13dde2530ba5a7779f3",
         arm64_linux:  "681b7dd3f543013c15a46dff831be55faf14fd050b62b47c7bb7f5399753b8e9",
         x86_64_linux: "8299afb909659a7149c056fda9e61b18e0b6964e09f3ca397f23d242e3920fd6"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
