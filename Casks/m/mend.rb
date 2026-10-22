cask "mend" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "26.9.3-hf1"
  sha256 arm:          "ba0da87ccffac3388e7b7a6815e48ad26a04eb20278e37a3c60c3a430435dc4c",
         intel:        "9af341fd90ed28e64dc26dd40dd638d85a9d5a704b2e103e664393f35ca11bbb",
         x86_64_linux: "de785a854803962eaca9a50881ce68d79337454e5d1219081908e431e75b9bfc"

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
