cask "mend" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "26.7.1"

  on_macos do
    sha256 arm:   "27db5c5310c3b7ba40dd8d203c14b9b897a2d3899df13c7bc6422dea14ba3ae8",
           intel: "b8bf81976ee616ea6ad68dd131009d7b6a78f884f5a2fc9ec5677a0846883a54"
  end
  on_linux do
    sha256 "6af968b22a8f4e975ef50138b319156eda6ce0a41f21705bbc65ed0ccc645d0f"

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
