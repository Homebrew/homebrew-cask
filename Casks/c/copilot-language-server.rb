cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.527.0"
  sha256 arm:          "b9740aa5d82c244a8eeefb823b61dd2f8714d086aa6b86a0befe571f2f9e4a34",
         intel:        "68dad6620f84bba1c96f4cbd85b47eaec0fee0c270dbfa7e850802895e985038",
         arm64_linux:  "df29cd8d4130a5c60c19d1ffd94f64d822fa3196bb62140f228a150a59fcbe6b",
         x86_64_linux: "281482685f6fb75438bca42bec4116ddcaa89e1950beac230ebd1fed821b4557"

  on_macos do
    depends_on macos: :big_sur
  end

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
