cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.1.10"
  sha256 arm:   "29b364be53d9ed0d8b07072254e0e0de822ea9175154b92faabe37061b450b6b",
         intel: "a088f4cdbc0bf720b38544de33b693fd685162283716cd3459e386a5eaed0fde"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
