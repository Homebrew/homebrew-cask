cask "mend" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "26.9.2"
  sha256 arm:          "81e441c3b3db3f1d9f3569abe09dfea2505445a0886a6c6461b8d3a26b854e50",
         intel:        "33c729ae213386a5fc3a37a71e78b081ca90550836f67f2c9a900c4103b0f76d",
         x86_64_linux: "669fe2b381e63809231df17fe15097f309e92b8e669a98dd673c956bf3dcdc81"

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
