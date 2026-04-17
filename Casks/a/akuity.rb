cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.29.0-rc.1.0.20260417175615-228908ed8b8e"
  sha256 arm:          "f70259cc1baa5d17e33e2293f04270cabfc444847c02301dd0dbf4f1857b3334",
         intel:        "be26f90d2c62f9b2f9368fc71d626934f7de861fb7055f5b49f45257e5a80fe6",
         arm64_linux:  "cb7a6fb43855459bfe0b7e3860b51330f80eee3a02222ff7b5fbf4b411b6e410",
         x86_64_linux: "ac9b65fabd5bc8a42cf108d125dfd54f134aa5b7c399d485b2f5fcbd419624aa"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/^v?(\d+(?:\.\d+)+(?:-rc(?:\.\d+)*)?(?:[._-]\d+(?:\.\d+)*)?(?:[_-]?\h+)?)$/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
