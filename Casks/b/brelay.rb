cask "brelay" do
  arch arm: "aarch64-apple-darwin", intel: "x86_64-apple-darwin"

  version "0.1.0"
  sha256 arm:   "d8e64725aebc7a349864008f956ea0969f7d08b9429e219d92dd7fd1a1fec12c",
         intel: "237b9d95f97d6ee67bf3a252347f56288f97beec1f507e61b488e4e0c7e9f50c"

  url "https://gitlab.com/api/v4/projects/84937021/packages/generic/blindrelay-client/#{version}/blindrelay-#{version}-#{arch}.tar.gz",
      verified: "gitlab.com/api/v4/projects/84937021/packages/generic/blindrelay-client/"
  name "Blindrelay"
  desc "Privacy-first transactional email CLI"
  homepage "https://blindrelay.app/cli"

  livecheck do
    url "https://blindrelay.app/client-latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  binary "blindrelay"
end
