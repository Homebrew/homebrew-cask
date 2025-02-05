cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.20.1"
  sha256 arm:   "7c0f68fb196ae89965a4963907bc315194b0f31545997ceb038ae6bb29e39441",
         intel: "b84a44e8674ce33bdda76fd467f601cf3a4d407a1895dba54a2df159aef493a8"

  url "https://dl.akuity.io/akuity-cli/v#{version}/darwin/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
