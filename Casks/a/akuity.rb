cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.31.0-rl.5.0.20260722191810-0848c68cf04c"
  sha256 arm:          "7f46dce4b35b4ee630f2b414c9040d98f5ececce3e9967ddcfaf61a678184a7d",
         intel:        "c6881219fa76aa483114ee4f7184f83c59b65cdecd32439ea86ae134d43cbd45",
         arm64_linux:  "463109016a73a9bccb9241be17d2efd4a984de52226ff199373e1fb3eb6d2e1e",
         x86_64_linux: "e110af6d062102e587f337c870c6916694dcba350ca1374c2ce595e191859a47"

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
