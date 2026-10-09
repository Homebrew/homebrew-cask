cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.1-rl.0.20261008193924-652f8cac47c3"
  sha256 arm:          "2a100a9e3fef4f6d94eb4acf02a2cd05cc40538ec55b4a90dd68f339802eb61c",
         intel:        "18bf3b8982b773d7180013da0589de3f2061724b8f2c39858cb7263969b65021",
         arm64_linux:  "629dcea25e4ab4a292a564e472a746bff52eeac3541afb34b72bd2c649759d18",
         x86_64_linux: "8efcf8a8abc4992d424d98fffb7e9ea4890f1f8e12bf79af283d692cc68eb059"

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
