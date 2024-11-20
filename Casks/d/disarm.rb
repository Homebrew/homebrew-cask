cask "disarm" do
  arch arm: "AAPLSi", intel: "x86"

  version :latest
  sha256 :no_check

  url "https://newosxbook.com/tools/disarm.tar"
  name "disarm"
  desc "Quick CLI instruction lookup for ARM64, turned full fledged binary analyzer"
  homepage "https://newosxbook.com/tools/disarm.html"

  binary "binaries/disarm.#{arch}", target: "disarm"
end
