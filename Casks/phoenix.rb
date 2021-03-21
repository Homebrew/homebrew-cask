cask "phoenix" do
  version "2.6.7"
  sha256 "27cd2fe78f6d898fda09288808e2559bcafc8b3069bdc6740fad050cb423cced"

  url "https://github.com/kasper/phoenix/releases/download/#{version}/phoenix-#{version}.tar.gz"
  name "Phoenix"
  homepage "https://github.com/kasper/phoenix/"

  depends_on macos: ">= :yosemite"

  app "Phoenix.app"

  zap trash: [
    "~/.phoenix.js",
    "~/Library/Application Support/Phoenix/storage.json",
  ]
end
