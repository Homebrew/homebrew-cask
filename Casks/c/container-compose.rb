cask "container-compose" do
  version "0.4.1"
  sha256 "4f5bcd3332c256a1c2a4c60e5f3c2fe6fb7cdbc48927eef6e21e0bffd37ba3dd"

  url "https://github.com/Mcrich23/container-compose/releases/download/#{version}/container-compose-macos-arm64"
  name "Container Compose"
  desc "Manage Apple Container with Docker Compose files"
  homepage "https://github.com/mcrich23/container-compose"

  # Install the binary into /usr/local/bin (or /opt/homebrew/bin on ARM Macs)
  binary "container-compose-macos-arm64", target: "container-compose"

  # Livecheck block for version updates
  livecheck do
    url :url
    strategy :github_latest
  end
end