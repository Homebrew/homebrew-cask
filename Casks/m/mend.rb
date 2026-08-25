cask "mend" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "26.8.1-hf1"

  on_macos do
    sha256 arm:   "ec29c49813d45bcf16ae0a579a473965b5fa0cfe9a9d3c3bfbcb4e4ed7805a37",
           intel: "5ccb4600ca91270762c93cbcd6a28ecbfb7f43a1a80b63f81ad219b0046d1dac"
  end
  on_linux do
    sha256 "6f18733f57fee2aae5fb8e04345c6909f63a153a9e36d489015c265783133b01"

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
