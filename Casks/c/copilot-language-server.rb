cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.512.0"
  sha256 arm:          "b774b476818fbcb93bcedecd633b0b01b4ec1815753cb9e062793f12595341af",
         intel:        "e38aa48e34c5d3e91d2176b2b445c563f1858363919834f87edd01cd932c8fa6",
         arm64_linux:  "fa24a7b135be31de706a35c22d653c182d49639df099962eddf9a4aec5308723",
         x86_64_linux: "e3975c9be8561332b967d11c8299411ffbb56faa19d764a1b6df4f8df371a2b2"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
