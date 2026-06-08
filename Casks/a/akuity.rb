cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.30.0-rl.2.0.20260604075704-be73ef133035"
  sha256 arm:          "0fb6624581d5f032fc9b3e61e41d976ec7ad3a2ad0d1f95b6e4266422bc785dc",
         intel:        "f5b65a35b6f18ff36d0fd35fb65682ba88c3d9913d4fa363a4b147593358356f",
         arm64_linux:  "02b9407f21380c47422c9d516cc141e10703de250f10db22c410633bb6e59211",
         x86_64_linux: "77f19d3eab58a007f1e50d5fec5fef8108c962c8a49b4cfcc4d613ac59421a90"

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
