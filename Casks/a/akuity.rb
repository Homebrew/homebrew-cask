cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.0-rl.5.0.20260924053208-b04b2f8fd43c"
  sha256 arm:          "10196391f30b06db93553cf6ab7beb4ea4794cb0455f81df303d0509c4d738d5",
         intel:        "f64673d38532b41b90482bb8cc3e47408892fd3b915d5d84c08530f90fb6367b",
         arm64_linux:  "b846b9f30e2049972f6cd4d384ced4e75ac96b4e495b750d2af077aa0ec92587",
         x86_64_linux: "df774b6d4bc3b4a1a5f04a30e2c9d4c64f7882da10ce105d636f9d6c47253b91"

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
