cask "super" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.5.0"
  sha256 arm:          "31c785d8ccdaca9a403ad3d527be62adcf17814b2d78e2981d2ed5e8afc1c8fb",
         intel:        "cdaa8cda0c3faabced28ab8569a4ffbb594ced62668123c9e73518f859b84016",
         arm64_linux:  "0acb796edce545316fb819c3dce7fe3b7e2f164ae54bd7ac6f2aca7710aa6255",
         x86_64_linux: "daf4d9261e1d58553cbf5687ce098b64ff6579a7e6c0b23b1dbbb4584d5f0f58"

  url "https://github.com/superdb/super/releases/download/v#{version}/super-v#{version}.#{os}-#{arch}.tar.gz"
  name "SuperDB"
  desc "Analytics database that fuses structured and semi-structured data"
  homepage "https://superdb.org/"

  binary "super"

  zap :not_required
end
