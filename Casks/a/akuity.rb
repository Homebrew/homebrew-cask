cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261021161312-b97ffdcc1c8b"
  sha256 arm:          "e385830580aacb90802c25b22b31799fe3050ff480b5e4862c5fbdd1817a6296",
         intel:        "c59f70c364c1076791ca0865d2d5a53cbfbabf144f4dd1c987ee21593b8e1b88",
         arm64_linux:  "905028e0246f60cfc98e89e99ad214386e313352988ec55562feaa4b2208e227",
         x86_64_linux: "a811be06339bdf6edc3e3d0748af4166867399a9a05699b61d0f87e540525417"

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
