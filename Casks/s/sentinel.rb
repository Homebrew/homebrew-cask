cask "sentinel" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.41.0"
  sha256 arm:          "1ce9485f96ad51520cf19a74ce4ed4a4edc3ffc988fd537a26a4bd937662bf65",
         intel:        "a011fa4c759fa6b1d677a39fe3c92d9a50c61a30e0828c5d36cae26b4000aabc",
         arm64_linux:  "e4735fcfcc3f2ef161ff2b17207da2f9235ca38ba92609be43e45199f807f1b4",
         x86_64_linux: "357ca824c9ac3ab11520a5ad2c2547b34aeb01dd4e3b9f1c7dc325d0be8a9935"

  url "https://releases.hashicorp.com/sentinel/#{version}/sentinel_#{version}_#{os}_#{arch}.zip"
  name "Sentinel"
  desc "Language and framework for policy as code"
  homepage "https://docs.hashicorp.com/sentinel"

  livecheck do
    url "https://releases.hashicorp.com/sentinel/"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/}i)
  end

  binary "sentinel"

  # No zap stanza required
end
