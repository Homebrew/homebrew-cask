cask "mend" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "26.7.2"

  on_macos do
    sha256 arm:   "bc226a7eafc155330b8c46bb6b6d6b16d54dcd252b53a147076a420a4bd721e4",
           intel: "301fcd3ec90cb8536470b4d9492cf730b9e233105a8f402e92b237a93a691cdf"
  end
  on_linux do
    sha256 "de339b2a2c6ed31836c6e32ffce7bb5273856d79cadff98c01142c304660e77c"

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
