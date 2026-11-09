cask "mend" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "26.10.1"
  sha256 arm:          "27baf79e749169954296f4ec4121712af3a822c3c93f967f0cfed951b1fd4a83",
         intel:        "9b6445b268899b651eabded0888aed7b5fcfb9eb2a1fba011dd61dc15e3205ff",
         x86_64_linux: "65d777c6b56a17bddb72d59ceaf7e28da5e278945f9d69c588f20702e0aac63b"

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
