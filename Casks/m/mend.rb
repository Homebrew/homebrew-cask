cask "mend" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "26.10.2-hf1"
  sha256 arm:          "06b33624a2a1f53d4b033c3baeb5fe13c0e2181460e2fa9d873578e325c62cc9",
         intel:        "9bb8854b20f6bd975d99e39d04117435880de0ba6bac621d42ebd0b039d7d1b7",
         x86_64_linux: "abca19e6e8910e5b478777825d6072bda1ee17180e1b6e880b9dbaa3a9772dc4"

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
