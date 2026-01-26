cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.395"
  sha256 arm:          "a37da45d7e5bee2471e3a6141295a66e55dee3fd0b1afc405eef393a9d525a9b",
         intel:        "5a471a370c384e43a791f7d8c448067446f4609d370c4e31bcc946d5d9f489d6",
         arm64_linux:  "b0b9ebe48a56ef8a4fb0fbea67fe6cee477b2c53e23e6caa41b6686c6acbb3bc",
         x86_64_linux: "76b6192a0d1d153da8909d295fd5a27c041b2be5a45a7d79e2986631f9738724"

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

  conflicts_with cask: "copilot-cli"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
