cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.100-1"
  sha256 arm:          "96459ef90e06b8143926ab2c3d356347fa069e91f285d1e54b7c722258cb0c8e",
         intel:        "40eaea83b7e5b5348d9016f89ce122b08192e5c2accd4d8ba638de208754726b",
         arm64_linux:  "78ab0555cdb99dbfce51f834cf00c0466d1a0eac6dfeeb6aea4a6a1e8010fe9f",
         x86_64_linux: "bc6dc83a6bdf19106def9340529a8baa33d1602bd372619dcda1411e2c5b7786"

  on_macos do
    depends_on macos: :ventura
  end

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  auto_updates true
  conflicts_with cask: "copilot-cli"

  binary "copilot"
  generate_completions_from_executable "copilot", "completion"

  zap trash: [
    "~/.copilot",
    "~/Library/Caches/copilot",
  ]
end
