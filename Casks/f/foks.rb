cask "foks" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.7"
  sha256 arm:   "f3f9a0acefb5f110743700a4690be3148299b9e93b542a1a217fbd8cd09f8be5",
         intel: "6cab28d47cfe458b36c54051c1e8221c2509f2d3faef4a48381ee037f553b2df"

  url "https://pkgs.foks.pub/stable/darwin/foks-v#{version}-darwin-brew-#{arch}.zip"
  name "FOKS"
  desc "Federated Open Key Service; E2EE KV-store and Git hosting"
  homepage "https://foks.pub/"

  livecheck do
    url "https://pkgs.foks.pub/stable/changelog.yml"
    strategy :yaml do |yaml|
      yaml["changelog"]&.map { |r| r["version"] }
    end
  end

  binary "foks"
  binary "foks", target: "git-remote-foks"

  postflight do
    set_permissions "#{staged_path}/foks", "0755"
  end

  zap trash: [
    "~/Library/Caches/foks",
    "~/Library/Logs/foks",
  ]
end
