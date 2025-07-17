cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.23.1-0.20250717174855-ef086387d81a"
  sha256 arm:          "ea65c335cd2893dd1cebe3ab3148ff16563e422cbe93b05fb1ddef1ad2237478",
         intel:        "d5233e51bed26c8055fef31e839d0591f12507a1d6c81e3f0692bc27b22bee1a",
         arm64_linux:  "a7170829a2a971948b32d520be27f0901fe0c50dc25ab63a8e76a335b1dd0edb",
         x86_64_linux: "5b2543c4213e97e1e077198ffb9401d34ab74c27750b6cf2ba6df5b64294c30f"

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
