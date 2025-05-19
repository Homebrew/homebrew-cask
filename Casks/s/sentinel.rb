cask "sentinel" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.40.0"
  sha256 arm:          "75dd8347e8fc609ff01079386e05676e11023ef82f947c8f8c033fe21bc6c3b2",
         intel:        "6961d4db9ac5635a395f68bc0a5debb7bbfa34222eec896bc384fc3af16be3ac",
         arm64_linux:  "d53523548c5cec641ce994d3178fd3fcc131424b3349738448044f1f38c7e4c4",
         x86_64_linux: "a358aa14abfe93e7d48095e740454f026c81e8c81503010a1a58d21788179425"

  url "https://releases.hashicorp.com/sentinel/#{version}/sentinel_#{version}_#{os}_#{arch}.zip"
  name "Sentinel"
  desc "Language and framework for policy as code"
  homepage "https://docs.hashicorp.com/sentinel"

  livecheck do
    url "https://developer.hashicorp.com/sentinel/install"
    regex(%r{href=.*?/sentinel[._-]?v?(\d+(?:\.\d+)+)[._-]#{os}[._-]#{arch}\.zip}i)
  end

  binary "sentinel"

  # No zap stanza required
end
