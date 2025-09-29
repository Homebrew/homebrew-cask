cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.25.1-0.20250929154916-9e2d92346aad"
  sha256 arm:          "fd806716b710e714588c86f85da723410bae6f1b55f61a5acdf9c00131ed9b75",
         intel:        "7df59c54b2bf8b999ff9138b799d8b45b406189c551b480089ca028a06c88866",
         arm64_linux:  "9f320880f7d425138a1c939a015afe39797161cdca59a2eb91d311bdd2e2ed9d",
         x86_64_linux: "8f5450b112b49521fc91d91357a763cff7caa9c140427361a745d870a413019a"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/v?(\d+(?:\.\d+)+(?:[_-]\d+(?:\.\d+)*)?(?:[_-]\h+)?)/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
