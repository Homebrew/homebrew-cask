cask "gitkraken-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "3.1.55"
  sha256 arm:          "739beb2fb966214710a0202ee9608335ad7945cfedd099d1d68978d8b64bf49c",
         intel:        "b1b28cceb6b5aaa49db687ab176a99d9bfa8db5bcd32624bad67bcc25bf26ca5",
         arm64_linux:  "1d9f8d13b6a2a1f50916c2aec1c7e47b97439a7b38e2baa5520dadf2b544e0f9",
         x86_64_linux: "94181f08dfbec21159428a8959eaf374fdbbbd273b0029d8807d0c5073687686"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{os}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
