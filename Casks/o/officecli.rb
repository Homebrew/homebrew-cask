cask "officecli" do
  arch arm: "arm64", intel: "x64"

  version "1.0.106"
  sha256 arm:   "2df4e0ee7ebe3e23cafc830f68f6e65d5b51936c04c31c56628cb684e74e94fd",
         intel: "347904b118dfa05c6f495d16367d4d73ef902975a667e7bd01d945b10b28d5c2"

  url "https://github.com/iOfficeAI/OfficeCLI/releases/download/v#{version}/officecli-mac-#{arch}",
      verified: "github.com/iOfficeAI/OfficeCLI/"
  name "OfficeCLI"
  desc "CLI tool for AI agents to read, edit, and automate Office documents"
  homepage "https://www.officecli.ai/"

  auto_updates true
  depends_on macos: :monterey

  binary "officecli-mac-#{arch}", target: "officecli"

  zap trash: "~/.officecli"
end
