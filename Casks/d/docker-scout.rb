cask "docker-scout" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.23.1"
  sha256 arm:          "5c7bd3e8115a559e511e8204a9680c3a26ffa2f825b8c693d98cbec8bd287f48",
         x86_64:       "d7bfebaf6defb01dc018e4b20e828f45df8cc78e5519eb4df09fc403155a304f",
         arm64_linux:  "88eecb7273f19bd18300d70e6f85b2e7d784e9e4f3cbb4a2b400db6b8355a52a",
         x86_64_linux: "0f778f9d833f28bc6cccff95e33039849c0afcecafa38d9f46fe74bfd0915714"

  url "https://github.com/docker/scout-cli/releases/download/v#{version}/docker-scout_#{version}_#{os}_#{arch}.tar.gz"
  name "Docker Scout CLI"
  desc "Docker CLI plugin for Docker Scout"
  homepage "https://www.docker.com/products/docker-scout/"

  binary "docker-scout"
  generate_completions_from_executable "docker-scout", shell_parameter_format: :cobra
end
