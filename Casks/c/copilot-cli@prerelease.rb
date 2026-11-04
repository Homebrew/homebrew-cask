cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.106-8"
  sha256 arm:          "4384422a7707e1d6901f5904acc9c8488606f2daaa343b561f16d6857a37a444",
         intel:        "8fc98be28b7f2fb5c6dcf34e4af7e55c1d03dfb6a823592f331d52c3a1113c9d",
         arm64_linux:  "8d4c0ed8bbce69945509ef2738c3e3e81388aef9013970bd0ee2d493c6e7bcda",
         x86_64_linux: "df62dcd637b8272750886edf697a9b2ff4c765a8e9c15426139b69d67d2a42d4"

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
