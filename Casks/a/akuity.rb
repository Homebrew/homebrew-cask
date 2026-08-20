cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.0-rl.1.0.20260818061858-c8868ebbd1f7"
  sha256 arm:          "f5fdea6ca9301ca0876468ee20d66ee15f8472af6e32d9503e5c18ee4385e6c7",
         intel:        "753b6da1109a834b53c218190aea6da2136b2c918b81b4be6a29b1ff67301b06",
         arm64_linux:  "78caa24952f003190fe2ba5485d90a4a159ee38d13062727cb3c36c3f5b35e09",
         x86_64_linux: "2873e0f45f190ead33a4f13c1ff1e625598af1e5a6a082daceaa45d7f09b7b94"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/^v?(\d+(?:\.\d+)+.*)$/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
