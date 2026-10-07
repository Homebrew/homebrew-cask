cask "mend" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "26.9.2-hf1"
  sha256 arm:          "b60eb0cc378f29b7d66144a92cf7d753407ae9f721529ec17d687ffa68ab06a8",
         intel:        "584886a1ff4620408718bc285e5f64bb6a24f8385b168efd4340bb36a21026f7",
         x86_64_linux: "5178348fc1feb6544cac244b3b040593b7e5515fd4768cddff09863617d52775"

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
