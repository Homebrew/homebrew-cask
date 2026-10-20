cask "mend" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "26.9.3"
  sha256 arm:          "f787ed29776edeb43c98b5ac8c4f273e815b6b8b7436e7af30435c023b671e23",
         intel:        "a266d3d08daa8fe7da80fa37e4061053cf13930d3fe2bd344b80023d7fc3093f",
         x86_64_linux: "b8400fc4e7cffa596144e73b39e694156fea78b7e4fe2ee365add00b01395bd0"

  on_linux do
    depends_on arch: :x86_64
  end

  url "https://downloads.mend.io/cli/#{os}_#{arch}/mend"
  name "mend"
  desc "Application security scanning CLI"
  homepage "https://www.mend.io/"

  livecheck do
    url "https://downloads.mend.io/matrix.json"
    strategy :json do |json|
      json["latest"]
    end
  end

  disable! date: "2026-10-20", because: :fails_gatekeeper_check

  binary "mend"

  zap trash: "~/.mend"
end
