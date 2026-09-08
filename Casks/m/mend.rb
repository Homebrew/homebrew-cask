cask "mend" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "26.8.2"

  on_macos do
    sha256 arm:   "b240fa8abe2f8436863dcd1cfaf88a0905b8a7171d97f67c2e6c05d92a76b07d",
           intel: "5e627d8c0bd5b31fc07b0fd1720e3aeeef74e210e564082ff589e4e98c7ea053"
  end
  on_linux do
    sha256 "fa1cc89b28fe54b29b65d1a63971bcd4ee81f309a33f9e5106a248c0aa73ffa7"

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
