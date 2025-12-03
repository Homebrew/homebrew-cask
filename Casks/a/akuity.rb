cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.26.2-0.20251125165401-4a5e99e36b71"
  sha256 arm:          "060ecae23449822592dab2bebce850a35c0d96297f9833f7d923acf8dd02e75e",
         intel:        "db340e6c78fb1bdd064d7b5518bb29bf391e3788abc4680074eb0db62e26f948",
         arm64_linux:  "b453bb4e447526df272eb0dbb07ac22d70262c0fc07476f8a548b7c59d7a32ee",
         x86_64_linux: "2149139d009faeda853d673921b877687bd7af1e31c2775f201037ceb5152aca"

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
