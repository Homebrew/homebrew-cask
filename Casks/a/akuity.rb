cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.25.1-0.20250911164333-e20cfe4b7936"
  sha256 arm:          "2cc1463b4acb2557ebb52fccf4c2479f1af704922380ab35fbf57b128f3b820a",
         intel:        "0575a5db9b1dd569317c31c53055f9a21c4220dc2fb8d6a42c8b6b0c0127d968",
         arm64_linux:  "84a3dfe7e7517b77b76f6b7f9a15ae8a4176bbb0c6a1c525a5dfee79b52fd658",
         x86_64_linux: "cc99e6f40605a8a103f147524f34d8f5fe9f6e6c13d7c9eea92297084c55ecfc"

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
