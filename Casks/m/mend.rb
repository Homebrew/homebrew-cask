cask "mend" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "26.10.2"
  sha256 arm:          "5c33f7409b618d9f8b11c8c5d4ba1880630790d3206bc34e4370ccb0311908e5",
         intel:        "4660b4e95209c9f0494ab445ca0be9ceb182f771f15e8940921e47d7ae8ba813",
         x86_64_linux: "65b99f872a14ff0526f2cb9ccc46f3a601a0d7d1ff8c07059ee1d05b18898e35"

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

  binary "mend"

  zap trash: "~/.mend"
end
