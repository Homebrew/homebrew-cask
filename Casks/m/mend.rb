cask "mend" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "26.8.2-hf1"
  sha256 arm:          "4ead5476fbed89086a8df18608607ca676ddebbc85f4785f132a7cd5cb3f5d5d",
         intel:        "18fbcca922f1dc8b7258483a891e7e01bdad98a69ade1ffe871f6493923aefcf",
         x86_64_linux: "cac6db6c83bb367d22ae7f0c4c443c5a39af8e59699d6c36f0897122eaf7bd8b"

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
