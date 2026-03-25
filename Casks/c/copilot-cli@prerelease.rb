cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.12-0"
  sha256 arm:          "efb7280de7fa45649ab09c81d5addd4766a29d394ba08485e79eda7a6fd8cee5",
         intel:        "97dcb6e250054de9db785725af48317e4b01c78607007b6bf29fa90afd269684",
         arm64_linux:  "a16370db3db411d9048c4a8cb1fe2dc4f58eb7825367d5214070c9ffeee261af",
         x86_64_linux: "909e6ad7462b45c0b105cad2146040b628b7184227828f304503249f34ae553e"

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
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
